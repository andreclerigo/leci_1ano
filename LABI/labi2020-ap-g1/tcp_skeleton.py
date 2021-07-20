#
# USADO COMO EXEMPLO PARA UM SOCKET TCP
# NAO ALTERAR NADA NESTE FICHEIRO
#

s = socket.socket( socket.AF_INET, socket.SOCK_STREAM )
s.bind( ... )
s.listen()

clients = []

while True:
    try:
        available = select.select( [ s ] + clients, [], [] )[0]
    except ValueError:
        # Sockets may have been closed, check for that
        for c in clients:
            if c.fileno() == -1: # closed
                clients.remove( c )
        continue # Reiterate select

    for c in available:
         # New client?
         if c is s:
            new, addr = s.accept()
            clients.append( new )

         # Or a client message/disconnect?
         else:
            # See if client sent a message
            if len(c.recv( 1, socket.MSG_PEEK )) != 0:
                # Handle the new message received in socket c

            # or just disconnected
            else:
                # You may need to perform some internal cleanup of your data structures here
                clients.remove( c )
                c.close()
                break # Reiterate select
