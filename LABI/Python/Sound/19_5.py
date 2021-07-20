from struct import pack
from math import sin, pi
import wave
import sys

def main(argv):
    rate=44100
    wv = wave.open(argv[1], "w")
    wv.setparams((1, 2, rate, 0, "NONE", "not compressed"))

    amplitude = 10000
    data = []
    freq_a = 440
    freq_b = 1170
    duration = 1 # Em segundos
    for i in range(0, rate * duration):
        data.append(amplitude*0.3*sin(2*pi*freq_a*i/rate) + amplitude*0.5*sin(2*pi*freq_b*i/rate))

    for i in range(0, rate * duration):
        data.append(amplitude * 0.1 * sin(2 * pi * freq_a * i / rate) + amplitude * 0.8 * sin(2 * pi * freq_b * i / rate))

    for i in range(0, rate * duration):
        data.append(amplitude)
        data.append(amplitude)
        data.append(amplitude)
        data.append(amplitude)
        data.append(amplitude)
        data.append(amplitude)
        data.append(-amplitude)
        data.append(-amplitude)
        data.append(-amplitude)
        data.append(-amplitude)
        data.append(-amplitude)
        data.append(-amplitude)
    # Com 2 ciclos for produz um som com o dobro do tempo e com as duas combinacoes de frequencias
    # Gerar (pack) a informação no formato correto (16bits)
    wvData = []

    for v in data:
        wvData += pack("h", int(v))

    wv.writeframes(bytearray(wvData))
    wv.close()
main(sys.argv)