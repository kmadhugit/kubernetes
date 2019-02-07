from flask import Flask
import socket,os,sys

port = os.environ.get('PORT', 8080)
name = os.environ.get('NAME', 'default-app')
app  = Flask(__name__)
host = socket.gethostname()
i = 1
@app.route('/')
def hello():
    global i,port,name
    s = f"{name} runs on container {host}(hostname) at port {port}. Access count = {i}\n"
    i = i + 1
    return s;
 
if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=port)
