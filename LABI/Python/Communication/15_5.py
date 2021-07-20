#client tcp
import socket

def main():
    tcp_s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    tcp_s.bind(("127.0.0.1", 0))
    #Ligar ao servidor
    adress = ("127.0.0.1", 1235)
    tcp_s.connect( adress )
    while 1:
        str_data = input("Mensagem: ")
        b_data = str_data.encode("utf-8")
        tcp_s.send(b_data)

        b_data = tcp_s.recv(4096)
        str_data = b_data.decode("utf-8")
        print(str_data)

    tcp_s.close()

main()