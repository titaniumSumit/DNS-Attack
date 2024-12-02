#!/bin/bash

echo "[*] Installing dependencies..."
sudo apt update
sudo apt install -y python3 python3-pip nmap arpspoof ettercap
pip3 install scapy flask

echo "[*] Setup complete! Use 'chmod +x dns_poisoner.sh' to make the tool executable."

# Display ASCII art
cat << "EOF"

     
 (        ) (      (       ) (   (       )     )     (     
 )\ )  ( /( )\ )   )\ ) ( /( )\ ))\ ) ( /(  ( /(     )\ )  
(()/(  )\()|()/(  (()/( )\()|()/(()/( )\()) )\())(  (()/(  
 /(_))((_)\ /(_))  /(_)|(_)\ /(_))(_)|(_)\ ((_)\ )\  /(_)) 
(_))_  _((_|_))   (_))   ((_|_))(_))   ((_) _((_|(_)(_))   
 |   \| \| / __|  | _ \ / _ \_ _/ __| / _ \| \| | __| _ \  
 | |) | .` \__ \  |  _/| (_) | |\__ \| (_) | .` | _||   /  
 |___/|_|\_|___/  |_|   \___/___|___/ \___/|_|\_|___|_|_\  
                                                           

    ╔══════════════════════════════════════════════╗
    ║                                                      ║
    ║    🎩 Welcome to the DNS Poisoner Tool! 🎩           ║
    ║                                                      ║
    ║   Be sure to use this tool ethically and             ║
    ║   responsibly in authorized environments!            ║
    ║                                                      ║
    ╚══════════════════════════════════════════════╝
           \
            \
             \
              ,   ,
             /(   )`
            (  \_/  )
             \_____/  

EOF
