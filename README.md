# **Database Explorer Web Application**

A powerful web-based tool for exploring and querying data from an SQLite database. Users can easily select tables, query specific columns, sort the data, and export results in various formats (CSV, PDF, XML, JSON). The user interface is built with **W3.CSS** for responsive design and **W3.JS** for client-side interactivity. Dynamic content loading and data fetching is powered by **HTMX**.

## **Features**

- **Dynamic Table and Column Selection**: Select tables and columns dynamically from the database.
- **Query Data**: Fetch data based on selected columns from the database.
- **Sorting**: Click on column headers to toggle sorting (ascending and descending) for better data exploration.
- **Data Export**: Export the queried data in different formats:
  - CSV
  - PDF
  - XML
  - JSON
- **Responsive UI**: The application is fully responsive, built with **W3.CSS**, ensuring accessibility across devices.
- **Interactive UI**: Use of **W3.JS** for dynamic interactions like table sorting and more.

## **Technologies Used**

- **Backend**:
  - **Flask**: Python web framework for building the application.
  - **SQLAlchemy**: ORM to interact with the SQLite database and execute queries.
  - **ReportLab**: Library for generating PDF reports.
  - **python-dotenv**: To manage environment variables (optional for local development).

- **Frontend**:
  - **W3.CSS**: A lightweight CSS framework used to create a responsive, modern, and clean layout.
  - **W3.JS**: JavaScript library that enhances the user experience by enabling client-side interactivity such as table sorting.
  - **HTMX**: A library that allows for AJAX-like requests and dynamic content updates without full page reloads.

## **Installation**

### Step 1: Clone the Repository

```bash
git clone https://github.com/jeetendra29gupta/database-explorer.git
cd database-explorer
```

### Step 2: Set Up a Virtual Environment

Create and activate a virtual environment to manage project dependencies:

```bash
# Create a virtual environment
python3 -m venv venv

# On Windows
.\venv\Scripts\activate

# On macOS/Linux
source venv/bin/activate
```

### Step 3: Install Dependencies

Install the required Python packages:

```bash
pip install -r requirements.txt
```


### Step 4: Database Setup

Ensure that you have the `business_database.db` SQLite database file in the project root. The application will automatically load the list of available tables and columns from this database.

- If you don’t already have a database, you can create one using SQLite or import your own SQLite database.

### Step 5: Run the Flask Application

Start the Flask development server:

```bash
python main_app.py
```

The application will be available at `http://127.0.0.1:8181/` by default.