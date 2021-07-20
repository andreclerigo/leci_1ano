#!/usr/bin/python3

import sys
import socket
import select
import json
import base64
from Crypto.Hash import SHA256
from Crypto.Cipher import AES

from common_comm import send_dict, recv_dict, sendrecv_dict

procs = {}

#
# Handler do pedido de criação de um processo de ordenação
#
def new_process( process_id, sock ):

    if process_id in procs.keys():
        return { 'error':'Sorting process already exists' }
    else:
        procs[process_id] = { 'endpoint': sock, 'ids': {} } 
        return { 'error':'' }

#
# Handler do pedido de inclusão de um novo candidato no processo de ordenação
#
def new_client( process_id, client_id, sock ):

    if process_id in procs:
        proc = procs[process_id]  # Selected sorting process

        if client_id in proc['ids']: # Client already belongs to it?
            return { 'error':'Client already registered in sorting process' }
        else:                        # New client
            proc['ids'][client_id] = { 'endpoint': sock }
            return { 'error':'' }

    else:
        return { 'error':'Sorting process no found' }

#
# Handler do pedido de listagem de clientes inscritos num processo de ordenação
#
def list_clients( process_id, sock ):
    if process_id in procs:
        proc = procs[process_id]  # Selected sorting process

        ids = []
        for i in proc['ids']:
            ids.append( i )

        return { 'ids':ids, 'error':'' }
    else:
        return { 'error':'Sorting process no found' }

#
# Handler do pedido de inicio da ordenação
#
def start_sorting( process_id, sock ):
    if process_id not in procs.keys():
        return { 'error':'Sorting process not found' }
    else:
        proc = procs[process_id]     # Selected sorting process
        if sock != proc['endpoint']: # Registered address is not the requester
            return { 'error':'Not authorized, you are not the process manager' }
        else:
            return run_sorting( proc )

def clean_proc( process_id ):
    clients = procs[process_id]['ids']

    for c in clients.values():
        c['endpoint'].close()

    del(procs[process_id])

def dump_proc( process_id ):
    # To be defined

def clean_client ( sock ):
    for k,v in procs.items():
        if v['endpoint'] == sock:
            clean_proc ( k )
            return

#
# Processo de ordenação
#
def run_sorting( proc ):
    # To be defined

#
# Message structure:
# { op: NEW, proc: proc_id }
# { op: ADD, proc = proc_id, id: client_id }
# { op: LIST, proc: proc_id }
# { op: START, proc: proc_id }
#

def new_msg( client ):
    request = recv_dict( client )
    print( 'Command: %s' % (str(request)) )

    if request['op'] == 'NEW':     # Create a new sorting process
        resp = new_process( request['proc'], client )
    elif request['op'] == 'ADD':   # Add a client to a sorting process
        resp = new_client( request['proc'], request['id'], client )
    elif request['op'] == 'LIST':   # List clients in a sorting process
        resp = list_clients( request['proc'], client )
    elif request['op'] == 'START': # Start the sorting process
        start_sorting( request['proc'], client )
        resp = dump_proc( request['proc'] )
        clean_proc( request['proc'] )
    else:
        resp = { 'error':'Wrong request "' + request['op'] + '"' }

    send_dict( client, resp )

def main():
    # Validate the program parameters

    # Set the server's TCP address from the command args

    address = ( ... , ... )

    s = socket.socket( socket.AF_INET, socket.SOCK_STREAM )
    s.bind( address )
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
             # Or a client
             else:
                # See if client sent a message
                if len(c.recv( 1, socket.MSG_PEEK )) != 0:
                    new_msg( c )
                else: # or just disconnected
                    clients.remove( c )
                    clean_client( c )
                    c.close()
                    break # Reiterate select

if __name__ == "__main__":
    main()
