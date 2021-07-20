from subprocess import Popen
from subprocess import PIPE
import sys

proc = Popen("ls -la" +sys.argv[1], stdout=PIPE, shell=True)

return_code = proc.wait()
output = proc.stdout.read().decode('utf-8')

for line in iter(proc.stdout.readline, b''):
    print(line.decode('utf-8'), end="sys.argv[2]")
