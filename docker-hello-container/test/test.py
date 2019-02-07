import requests
URL = "http://0.0.0.0:8080/"

r = requests.get(URL)
print(r.text)

