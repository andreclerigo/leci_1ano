import wave
import sys

def main(argv):
    wf = wave.open(argv[1], "rb")
    print("Número de canais:" +  str(wf.getnchannels()))
    print("Tamanho da Sample:" + str(wf.getsampwidth()))
    print("Número de Frams:" + str(wf.getnframes()))
    print("Frequência:" + str(wf.getframerate()))

    wf.close()

main(sys.argv)