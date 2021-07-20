import sqlite3 as sql
import sys

def main(argv):
    db = sql.connect(argv[1])

    name = sys.argv[2]
    result = db.execute("SELECT contacts.*,companies.name FROM contacts,companies WHERE contacts.company_id = companies.id AND (middlename LIKE ? OR lastname LIKE ?)", ('%' + name + '%','%' + name + '%',))

    for row in result:
        print(row)
    db.close()

main(sys.argv)