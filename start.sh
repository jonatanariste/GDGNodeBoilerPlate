#!/bin/bash
echo "Levantando la instancia de nodejs con nohup"
nohup nodejs server.js --fe_ip PUT_YOUR_PRIVATE_IP_HERE &
echo "La instancia se levanto correctamente"
