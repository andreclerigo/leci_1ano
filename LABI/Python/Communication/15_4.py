#!/usr/bin/python3
# encoding=utf-8
#servidor tcp

import socket

def main():
    tcp_s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    adress = ("127.0.0.1", 1235)
    tcp_s.bind( adress )

    #maximo de 1 cliente à espera de aceitacao

    tcp_s.listen(1)

    #esperar por novos clientes
    client_s, client_addr = tcp_s.accept()

    while 1:
        b_data = client_s.recv(4096)
        client_s.send(b_data.upper())
    client_s.close()
    tcp_s.close()

main()