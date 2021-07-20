import sqlite3 as sql
import sys

def main(argv):
    db = sql.connect(argv[1])

    '''
    domain = input("Dominio do email? ")
    result = db.execute("SELECT * FROM contacts WHERE middlename LIKE ?", ('%' + domain + '%',))
    '''
    name = input("Qual o nome que quer procurar? ")
    result = db.execute("SELECT * FROM contacts WHERE middlename LIKE ? OR lastname LIKE ?", (name,name,))

    for row in result:
        print(row)
    db.close()

main(sys.argv)