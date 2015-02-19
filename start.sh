#!/bin/bash
sudo iptables -A PREROUTING -t nat -i eth0 -p tcp --dport 80 -j REDIRECT --to-port 8080
echo "Levantando la instancia de nodejs con nohup"
nohup nodejs server.js --fe_ip PUT_YOUR_PRIVATE_IP_HERE &
echo "La instancia se levanto correctamente"
