import os
import sys
from Crypto.Cipher import ARC4

cipher = ARC4.new(sys.argv[1])
with open(sys.argv[2], "rb") as file:
    data = file.read()
cryptogram = cipher.encrypt(data)

os.write(1, cryptogram)

decipher = ARC4.new(sys.argv[1])
decrypted = decipher.decrypt(cryptogram)
print (decrypted.decode('utf-8'))

#Imprimir Texto Cifrado no Ficheiro
f = open("/home/andre/Desktop/decifrado", "w+")
f.write()
f.close()