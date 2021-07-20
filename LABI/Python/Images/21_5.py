from PIL import Image
import sys

def main(fname):
    im = Image.open(fname)
    for i in [1, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100]:
        im.save(fname+"-test-%i.jpg" % i, quality=i)

main(sys.argv[1])