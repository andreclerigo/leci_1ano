import base64
from Crypto.Hash import SHA256

#penso que este ficheiro deve ter que ser ligado com o cifra para dar digest e ser a cifra a msg
msg = 'This is a message that is going to be hashed with SHS-256'

hash_f = SHA256.new()
hash_f.update( bytes(msg, 'utf8') )
digest = hash_f.digest()

b64_digest = base64.b64encode( digest )
recovered_digest = base64.b64decode( b64_digest )

#Confirmar se está tudo correto, uma especie de assert??
if digest == recovered_digest:
    print( 'Success!' )
else:
    print( 'Failure, %s is different from %s' % (digest, recovered_digest) )
