#!/bin/sh

if [ $# -ne 3 ]; then
    echo "Usage: ${0##*/} order_process server_port client_instances"
    exit 1
fi

clients=$3

while [ $clients -ne 0 ]; do
    python3 ./client_tcp.py $1 u$clients $2 &
    clients=`expr $clients - 1`
done

wait
