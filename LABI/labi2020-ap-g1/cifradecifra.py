import os
from Crypto.Cipher import AES

iterations = 1000
engines = []

# Use index number 12, create a 128-bit array with it

index = 12
_128_bit_padded_index = bytes("%16d" % (index), 'utf8')

# Use the 128-bit array as the input to the multiple ciphering

data = _128_bit_padded_index
engines = []

for i in range(iterations):
    key = os.urandom(16)
    engines.append( AES.new( key, AES.MODE_ECB ) )
    data = engines[i].encrypt( data )

# Decipher in the oposite order 

for i in range(iterations - 1, -1, -1):
    data = engines[i].decrypt( data )

recovered_index = int(str(data, 'utf8'))

if recovered_index == index:
    print( 'Success!' )
else:
    print( 'Failure, %d is different from %d' % (index, recovered_index) )

