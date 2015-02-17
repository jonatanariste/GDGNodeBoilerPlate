#!/bin/bash
echo "Levantando la instancia de nodejs con nohup"
nohup nodejs server.js --fe_ip 10.240.146.199 &
echo "La instancia se levanto correctamente"
