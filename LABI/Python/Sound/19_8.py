import wave
import struct
import sys
from struct import pack
import math

def copy(data):
    output = []
    for value in data:
        output.append(value)
    return output

def volume(data, param):
    output = []
    vol = param
    for value in data:
        output.append(value*vol)
    return output

def reverse(data):
    output = []
    for i in range(len(data) - 1, -1, -1):
        output.append(data[i])
    return output

def main(argv):
    stream = wave.open(argv[1], "rb")

    sample_rate = stream.getframerate()
    num_frames = stream.getnframes()

    raw_data = stream.readframes( num_frames )
    stream.close()

    data = struct.unpack("%dh" % num_frames, raw_data) # "B" para ficheiros 8bits

    # Aplica efeito sobre data, para output_data
    param_str = ""
    i = 2
    while i < len(argv):
        if argv[i] == "copy":
            data = copy(data)
        elif argv[i] == "volume":
            param = float(argv[i+1])
            data = volume(data, param)
            param_str = str(param)
            i += 1
        elif argv[i] == "reverse":
            data = reverse(data)
        else:
            sys.exit("ERROR: Option chosen is not recognized")

        wvData = b""
        for v in data:
            wvData += pack("h", int(v))

        if param_str == "":
            stream = wave.open("out- " + argv[i] + " - " + argv[1], "wb")
        else:
            stream = wave.open("out- " + argv[i-1] + param_str + " - " + argv[1], "wb")
        stream.setnchannels(1)
        stream.setsampwidth(2)
        stream.setframerate(sample_rate)
        stream.setnframes(len(wvData))
        stream.writeframes(bytearray(wvData))
        stream.close()

        i += 1

if len(sys.argv) < 3:
    print("Usage: %s wave-file filter1 <params> filter2 <params> ..." % sys.argv[0])
else:
    main(sys.argv)