#!/bin/bash
set IP = ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1  -d'/'
echo "Levantando la instancia de nodejs con nohup"
nohup nodejs server.js --fe_ip $IP &
echo "La instancia se levanto correctamente"
