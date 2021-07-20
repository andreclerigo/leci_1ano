import sqlite3 as sql
import sys

def main(argv):
    db = sql.connect(argv[1])
    i=0
    result = db.execute("SELECT first name FROM contacts")
    rows = result.fetchall()

    for row in rows:
        i+=1
        print(row)

    #caso o tamanho seja muito grande
    '''
    while True:
        row = result.fetchone()
        if not row:
            break
        print(row)
    '''

    print(str(i) + " contactos")
    db.close()
    print("Desconectei-me!")
main(sys.argv)