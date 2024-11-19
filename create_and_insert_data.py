import sqlite3

# Path to the SQLite database file
db_file = 'business_database.db'

# Path to the SQL file containing the table creation and data insertion commands
sql_file = 'create_and_insert_data.sql'

# Connect to the SQLite database (or create it if it doesn't exist)
conn = sqlite3.connect(db_file)
cursor = conn.cursor()

# Read and execute the SQL commands from the .sql file
with open(sql_file, 'r') as file:
    sql_script = file.read()
    cursor.executescript(sql_script)

# Commit changes and close the connection
conn.commit()
conn.close()

print("Database created and data inserted successfully.")
