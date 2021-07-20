import sqlite3
from sqlite3 import Error
import os

def create_connection(db_file):
    conn = None
    try:
        conn = sqlite3.connect(db_file)
        return conn
    except Error as e:
        print(e)

    return conn


def create_table(conn, create_table):
    try:
        c = conn.cursor()
        c.execute(create_table)
    except Error as e:
        print(e)


def main():
    
    baseDir = os.path.dirname(os.path.abspath(__file__))
    database = os.path.join(baseDir, 'instagram.db')
    print(database)
    sql_create_images_table = """ CREATE TABLE IF NOT EXISTS images (
                                        id integer PRIMARY KEY AUTOINCREMENT,
                                        image_name text NOT NULL,
                                        image_effect text,
                                        date text NOT NULL,
                                        author text NOT NULL,
                                        caption text NOT NULL,
                                        effects text NOT NULL,
                                        keywords text,
                                        votes_up integer,
                                        votes_down integer,
                                        views integer,
                                        password text,
                                        secure integer
                                        
                                    ); """

    sql_create_comments_table = """CREATE TABLE IF NOT EXISTS comment (
                                    commentary_id integer PRIMARY KEY AUTOINCREMENT,
                                    comment text NOT NULL,
                                    author text NOT NULL,
                                    image_id integer NOT NULL,
                                    FOREIGN KEY (image_id) REFERENCES images (id)
                                );"""

    # create a database connection
    conn = create_connection(database)

    # create tables
    if conn is not None:
        # create projects table
        create_table(conn, sql_create_images_table)

        # create tasks table
        create_table(conn, sql_create_comments_table)
    else:
        print("Error! cannot create the database connection.")


if __name__ == '__main__':
    main()