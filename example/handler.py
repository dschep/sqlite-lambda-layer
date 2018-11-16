import sqlite3

def hello(event, context):
    con = sqlite3.connect(':memory:')
    cur = con.cursor()
    row = cur.execute("SELECT 'Hello from an in-memory SQLite DB!'").fetchone()
    con.close()

    return row[0]
