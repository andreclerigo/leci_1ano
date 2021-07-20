import csv
import sys

def main(argv):
    fich_csv = open(argv[1], "r")
    csv_reader = csv.reader(fich_csv, delimiter=',')
    #csv_reader = csv.DictReader(fich_csv, delimiter=',')
    for row in csv_reader:
        print(row)
    fich_csv.close()

main(sys.argv)
