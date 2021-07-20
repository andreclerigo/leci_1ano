from PIL import Image
import sys

def main(fname):
    im = Image.open(fname)

    c = input("Qual o formato? PNG? TIFF? BMP?")
    switcher={
        'png': '.png',
        'PNG': '.png',
        'tiff': '.tiff',
        'TIFF': '.tiff',
        'bmp': '.bmp',
        'BMP': '.bpm'
    }

    ext = switcher.get(c)
    im.save(fname + "-test-" + ext)

main(sys.argv[1])