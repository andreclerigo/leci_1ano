#import os
import sys
from Crypto.Cipher import ARC4

cipher = ARC4.new(sys.argv[1])
with open(sys.argv[2], "rb") as file:
    data = file.read()
cryptogram = cipher.encrypt(data)

f = open(sys.argv[3], "wb")
f.write(cryptogram)
f.close()
