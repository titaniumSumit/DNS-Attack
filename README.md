# DNS Poisoner (Educational Tool)
### Support:
Please Support me so that I can post more contents.
<p><a href="https://www.buymeacoffee.com/titaniumSumit" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" height="23" width="100" style="border-radius:1px" 

 </a></p>
## Features
1. Scans the local network for devices.
2. Allows the attacker to select a target machine.
3. Spoofs DNS records to redirect traffic to a phishing page.

## Usage
1. Clone the repository:
   ```bash
   git clone https://github.com/DNS-Attack/dns_poisoner.git
   cd dns_poisoner
   ```
2. Make it executable 
   ```bash
   chmod +x setup.sh
   chmod +x dns_poisoner.sh
   ```
3. Run the setup script:
   ```bash
   ./setup.sh
   ```
4. Launch the DNS poisoner:
   ```bash
   ./dns_poisoner.sh
   ```
5. Create a Backend Endpoint
Create a Python Flask application to handle the POST request and log credentials to a file or display them in the terminal.

###### File: server.py
- Run the Server
Start the server to listen for incoming POST requests:
```bash
python3 server.py
```
6. Log Output
When credentials are submitted via the HTML form, they are:

-Logged in the terminal.
-Saved to a file named stolen_credentials.txt.
###### Example Output:

- Terminal Output:
```
[INFO] Stolen credentials captured: Username=XXXXXXXXXX, Password=•••••
```
- File Output (stolen_credentials.txt):
```
Username: XXXXXXXXXX, Password: •••••
```
