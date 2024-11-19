import csv
import io
import json
import xml.etree.ElementTree as ET
from io import BytesIO

from flask import Flask, render_template, request, Response
from reportlab.lib.pagesizes import letter
from reportlab.pdfgen import canvas

from database_engin import get_tables, get_columns, get_result

app = Flask(__name__)


@app.route('/')
def show_tables():
    title = "DatabaseExplorer: Query and View Your Data"
    tables = get_tables()
    return render_template('index.html', title=title, tables=tables)


@app.route('/show_fields', methods=['GET'])
def show_fields():
    table = request.args.get('table')
    column_list = get_columns(table)
    if column_list:
        return render_template('columns.html', columns=column_list)

    return ''


@app.route('/show_result', methods=['POST'])
def show_result():
    if request.method == 'POST':
        table = request.form['table']
        fields = request.form.getlist('fields')
        data = get_result(table, fields)
        return render_template('result.html', table=table, fields=fields, data=data)


@app.route('/export_csv/<table>', methods=['GET'])
def export_csv(table):
    fields = request.args.getlist('fields')
    data = get_result(table, fields)

    output = io.StringIO()
    writer = csv.writer(output)
    writer.writerow(fields)
    writer.writerows(data)
    output.seek(0)

    return Response(output.getvalue(),
                    mimetype='text/csv',
                    headers={'Content-Disposition': f'attachment; filename={table}.csv'})


@app.route('/export_pdf/<table>', methods=['GET'])
def export_pdf(table):
    fields = request.args.getlist('fields')
    data = get_result(table, fields)
    buffer = BytesIO()
    c = canvas.Canvas(buffer, pagesize=letter)
    c.drawString(100, 750, f"Data Export for {table}")
    y_position = 730

    # Draw table headers
    for field in fields:
        c.drawString(100, y_position, field)
        y_position -= 20

    # Draw table rows
    for row in data:
        y_position -= 20
        for i, value in enumerate(row):
            c.drawString(100 + (i * 100), y_position, str(value))
        y_position -= 20

    c.save()
    buffer.seek(0)

    return Response(buffer.getvalue(),
                    content_type='application/pdf',
                    headers={'Content-Disposition': f'attachment; filename={table}.pdf'})


@app.route('/export_xml/<table>', methods=['GET'])
def export_xml(table):
    fields = request.args.getlist('fields')
    data = get_result(table, fields)

    root = ET.Element("data")
    for row in data:
        row_elem = ET.SubElement(root, "row")
        for field, value in zip(fields, row):
            field_elem = ET.SubElement(row_elem, field)
            field_elem.text = str(value)

    xml_data = ET.tostring(root, encoding='utf-8', method='xml')

    return Response(xml_data,
                    mimetype='application/xml',
                    headers={'Content-Disposition': f'attachment; filename={table}.xml'})


@app.route('/export_json/<table>', methods=['GET'])
def export_json(table):
    fields = request.args.getlist('fields')
    data = get_result(table, fields)
    data_dict = [dict(zip(fields, row)) for row in data]
    return Response(json.dumps(data_dict, indent=4),
                    mimetype='application/json',
                    headers={'Content-Disposition': f'attachment; filename={table}.json'})


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8181, debug=True)
