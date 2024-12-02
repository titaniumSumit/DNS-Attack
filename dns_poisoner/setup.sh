#!/bin/bash

echo "[*] Installing dependencies..."
sudo apt update
sudo apt install -y python3 python3-pip nmap arpspoof ettercap
pip3 install scapy flask

echo "[*] Setup complete. Use 'chmod +x dns_poisoner.sh' to make the tool executable."
