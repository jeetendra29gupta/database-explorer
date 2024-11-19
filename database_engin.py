from sqlalchemy import create_engine, MetaData
from sqlalchemy.orm import sessionmaker

# Database configuration
SQLALCHEMY_DATABASE_URL = 'sqlite:///business_database.db'
engine = create_engine(SQLALCHEMY_DATABASE_URL, connect_args={"check_same_thread": False}, echo=False)
Session = sessionmaker(autocommit=False, autoflush=False, bind=engine)
metadata = MetaData()
metadata.reflect(bind=engine)


def get_tables():
    """Return a list of table names in the database."""
    return list(metadata.tables.keys())


def get_columns(table):
    """Return the list of columns for the selected table."""
    table_obj = metadata.tables.get(table)
    if table_obj is not None:
        return [column.name for column in table_obj.columns]
    return []


def get_result(table, fields):
    """Fetch data from the specified table and selected fields."""
    table_obj = metadata.tables.get(table)
    if table_obj is not None and all(field in table_obj.columns for field in fields):
        with Session() as session:
            query = session.query(*[table_obj.c[field] for field in fields])
            return query.all()
    return None
