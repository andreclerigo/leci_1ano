from PIL import Image
import sys

def main(fname):
    im = Image.open(fname)
    width, height = im.size

    for x in range(width):
        for y in range(height):
            p = im.getpixel((x, y))
            r = p[0] & 0b11110000
            g = p[1] & 0b11110000
            b = p[2] & 0b11110000
            im.putpixel((x, y), (r, g, b))

    im.save(fname+"-4bits.jpg")

main(sys.argv[1])