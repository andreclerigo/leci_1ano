#!/usr/bin/python3

import random
import os
import csv
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

def client(server, proc, client):
    request = {'op':'ADD', 'proc': proc, 'id': client }
    resp = sendrecv_dict( server, request )

    if resp['error'] != '':
        print( 'Server error: ' + resp['error'] )
        sys.exit( 2 )

    #  Wait for server orders and show the ordering outcome at the end
    newLst = recv_dict(server) # Receives dictionary with list (1 to N) and all encrypt keys

    #  Step 2 & 3
    key = os.urandom(16)  # Random key generated to encrypt the list
    usableKey = AES.new(key, AES.MODE_ECB)  # Changes to AES type so it can be used to encrypt
    key = str(base64.b64encode(key), 'utf-8')  # Encode to b64 to be used on send/recv_dict

    #  Ciphering the list with Client's key
    cyphered = []
    for i in range ( len(newLst['lst']) ):
        msg = base64.b64decode(newLst['lst'][i])
        r = usableKey.encrypt(msg)
        cyphered.append(str(base64.b64encode(r), 'utf-8'))

    #  Randomize the list
    random.shuffle(cyphered)
    send_dict(server,  {'lst': cyphered})  # Sending the list Cyphered by the user


    #  Step 4
    #  Receives the list, removes one and sends it back
    cyphered_removed = recv_dict(server)
    value = random.randint(0, len(cyphered_removed['lst']) - 1)  # Random number between (0 and length(list)-1)
    Ci = cyphered_removed['lst'][value]  # Save the Cipher chosen
    cyphered_removed['lst'].remove(Ci)
    send_dict(server, cyphered_removed)


    #  Step 5
    #  Send the chosen Cipher by the user
    send_dict(server, {'C':Ci})

    # Doing the bit commit
    bit = SHA256.new()
    bit.update(bytes(Ci, ' utf-8'))
    bit.update(key.encode('utf-8'))
    Bi_tmp = bit.digest()  # Bi = Digest(Ci, Ki)
    Bi = str(base64.b64encode(Bi_tmp),'utf-8')  # Encodign to b64 so it can be sent to the server
    send_dict(server, {'B': Bi})


    #  Step 6
    Pair = recv_dict(server)

    #Compares the cyphered and commit stored in the server with the one the client has
    connected = 1
    if Pair[client]['Ci'] != Ci or Pair[client]['Bi'] != Bi:
        print("The pair sent by " + client + " is not the same pair received by the server")
        server.close()
        connected = 0
    send_dict(server, {'con': connected})  # Will send to the server information if the client is still connected or not


    #  Step 7
    #  Send the keys
    send_dict(server, {'key': key})


    #  Step 8
    #Receives the pairs and checks it
    serverPairs = recv_dict(server)
    connected = 1
    if serverPairs[client]['Ci'] != Ci or serverPairs[client]['Bi'] != Bi or serverPairs[client]['key'] != key:
        print("The trio sent by " + client + " is not the same trio received by the server")
        server.close()
        connected = 0
    send_dict(server, {'con': connected})  # Will send to the server information if the client is still connected or not

    #  Receives a list with ALL the users keys
    serverKeys = recv_dict(server)
    keys = serverKeys['reversedKeys']
    number = base64.b64decode(Ci)

    #  Decrypting the value chosen by the client
    for c_key in keys:
        c_key = base64.b64decode(c_key)
        c_key = AES.new(c_key, AES.MODE_ECB)
        number = c_key.decrypt(number)

    usableNumber = int(str(number, 'utf-8'))
    send_dict(server, {'order': usableNumber})


    #  Step 9
    #  Verifyies if my order is correct
    serverOrder = recv_dict(server)
    connected = 1
    if serverOrder[client] != usableNumber:
        print(client + " order is not correct")
        server.close()
        connected = 0
    send_dict(server, {'con': connected})  # Will send to the server information if the client is still connected or not

    def getList(dict):  # Returns a list with all ids connected to the server
        return list(dict.keys())  # Makes a list out of dictionary keys (users id's)
    clients_list = getList(serverOrder)

    print(serverOrder)

def dump_csv( content ):
    # Dump a CSV to a file from data received from the server - Done
    fout = open("report.csv", "w") #Opens/Creates  CSV file to store data

    #Definition of the Fields to fill in CSV, using a semi-colon as separator
    writer = csv.DictWriter(fout, delimiter = ";", fieldnames = ['order', 'id', 'C', 'K', 'B'])
    writer.writeheader()

    #Cycling trough the data received from the server, and writing it into the CSV File
    for client_id in content['ids']:
        order = content['ids'][client_id]['order']
        c_id = client_id
        C =(content['ids'][client_id]['C'])
        K =(content['ids'][client_id]['K'])
        B =(content['ids'][client_id]['B'])
        data = {'order':order,'id':c_id,'C':C,'K':K,'B':B}
        writer.writerow(data)

    # Closing file to store the data
    fout.close()

def main():
    # Validate the program parameters
    if len(sys.argv) < 4 or len(sys.argv) > 5:
        sys.exit("ERROR: Invalid parameters <process> <id> <server port> <option server ip>")

    # If the program has 5 arguments, make the last one the server's ip
    if len(sys.argv) == 5:
        try:
             ip = str(sys.argv[4])
             x = ip.split(".")

             # Verify that the 5th argument has an IPv4 or DNS structure
             if len(x) != 2 and len(x) != 4:
                 raise Exception("Server adress is not a valid IPv4 or DNS")

             # Verify if the DNS structure contains blank parameters as (google.) or (.com)
             if len(x) == 2:
                 for i in x:
                     if i == '':
                         raise Exception("DNS not valid")

             # Verify the IPv4 structure is valid (X.X.X.X), X is a number between 0 and 255
             if len(x) == 4:
                 for i in x:
                     if int(i) < 0 or int(i) > 255:
                         raise Exception("IPv4 (X.X.X.X) is not valid, X must be a int between 0 and 255")
        except Exception as err:
            sys.exit("ERROR: " + str(err))
    else:
         ip = "127.0.0.1"

    # Set the server's TCP address from the command args
    try:  #Verify if the server port is valid
        address = ( ip , int(sys.argv[3]) )
        if int(sys.argv[3]) < 999:
            raise ValueError("Server port must be a positive number with at least 4 digits")
    except ValueError as err:
        sys.exit("ERROR: " + str(err))

    s = socket.socket( socket.AF_INET, socket.SOCK_STREAM )
    s.connect( address )

    # Set the process_id and the client_id from the command args
    process_id = sys.argv[1]
    client_id = sys.argv[2]

    if client_id == '_':
        dump_csv ( manager( s, process_id ) )
    else:
        client( s, process_id, client_id )

if __name__ == "__main__":
    main()
