import pyaudio
import wave
import sys

def main(argv):
    player = pyaudio.PyAudio()

    wf = wave.open(argv[1], "rb")
    print("Número de canais:" + str(wf.getnchannels()))
    print("Tamanho da Sample:" + str(wf.getsampwidth()))
    print("Número de Frams:" + str(wf.getnframes()))
    print("Frequência:" + str(wf.getframerate()))

    sample_width = wf.getsampwidth()
    nchannels = wf.getnchannels()
    framerate = wf.getframerate()

    stream = player.open(format = player.get_format_from_width(sample_width), channels = nchannels, rate = framerate, output = True)

    while True:
        data = wf.readframes(1024)
        if not data:
            break
        stream.write(data)

    stream.close()
    player.terminate()
    wf.close()

main(sys.argv)