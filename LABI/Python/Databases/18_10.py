import sqlite3 as sql
import sys

def main(argv):
    db= sql.connect(argv[1])
    print("Estou connectado!")
    db.close()
    print("Desconectei-me!")

main(sys.argv)