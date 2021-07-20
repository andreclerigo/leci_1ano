from PIL import Image
import sys

def main(fnames):
    for fname in fnames:
        im = Image.open(fname)
        print("{} - mode {}".format(fname, im.mode))

main(sys.argv[1:])