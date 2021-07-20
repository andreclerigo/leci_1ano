#!/usr/bin/python3

import random
import os
import sys
import socket
import json
import base64
from Crypto.Hash import SHA256
from Crypto.Cipher import AES

from common_comm import send_dict, recv_dict, sendrecv_dict

#
# JSON message structures already defined:
#
# 1 - Create an ordering process
#     request: { op: NEW, proc: <proc_id string> }
#     response: { error: <string> } (empty string if no error)
#
# 2 - List clients associated to an ordering process
#     request: { op: LIST, proc: <proc_id string> }
#     response: { ids: <list>, error: <string> } (empty string if no error)
#
# 3 - Start an ordering process
#     request: { op: START, proc: <proc_id string> }
#     response: { <to be defined> }
#
# 4 - Add a client to an ordering process
#     request: { op: ADD, proc: <proc_id string>, id: <client_id string> }
#     response: { error: <string> } (empty string if no error)

def manager( server, proc ):
    msg = { 'op': 'NEW', 'proc': proc }
    resp = sendrecv_dict( server, msg )

    print( resp )

    if resp['error'] != '':
        print( 'Server error: %s' % (resp['error']) )
        sys.exit( 2 )

    while True:
        print( 'Commands for ordering on process "' + proc + '"' )
        print( '\tL or l - list the clients' )
        print( '\tS or s - start ordering' )
        print( '\tQ or q - quit' )

        while True:
            cmd = input( 'prompt: ' )

            if cmd in ['l',  'L']:
                msg = { 'op':'LIST', 'proc': proc }
                resp = sendrecv_dict( server, msg )

                if resp['error'] == '':
                    if len(resp[ 'ids' ]) == 0:
                        print( 'No clients yet!' )
                    else:
                        print( '%d clients:' % (len(resp['ids'])) )
                        for name in resp['ids']:
                            print( '\t%s' % (name) )
                else:
                    print( 'Error: ' + resp['error'] )
                    sys.exit( 2 )
            elif cmd in ['s', 'S']:
                msg = { 'op':'START', 'proc': proc }
                resp = sendrecv_dict( server, msg )
                return resp
            elif cmd in ['q', 'Q']:
                sys.exit( 0 )
            else:
                print( "???" )

def client( server, proc, client ):
    request = {'op':'ADD', 'proc': proc, 'id': client }
    resp = sendrecv_dict( server, request )

    if resp['error'] != '':
        print( 'Server error: ' + resp['error'] )
        sys.exit( 2 )

    # Wait for server orders and show the ordering outcome at the end

def dump_csv( ... ):
    # Dump a CSV to a file from data received from the server

def main():
    # Validate the program parameters

    # Set the server's TCP address from the command args

    address = ( ... , ... )
    
    s = socket.socket( socket.AF_INET, socket.SOCK_STREAM )
    s.connect( address )

    # Set the process_id and the client_id from the command args

    process_id = ...
    client_id = ...

    if client_id == 'chose a default client name for an ordering process manager':
        dump_csv ( manager( s, process_id ) )
    else:
        client( s, process_id, client_id )

if __name__ == "__main__":
    main()
