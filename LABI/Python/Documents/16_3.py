import time
import psutil

def main():
    print( 'time, "bytes sent", "bytes recv", %cpu')

    for i in range(0, 60):
        t = time.time()
        cpu = psutil.cpu_percent(interval=1)
        counters = psutil.net_io_counters()
        bytes_sent = counters.bytes_sent
        bytes_recv = counters.bytes_recv
        print("%f, %d, %d, %f" % (t, cpu, bytes_sent, bytes_recv))

main()
