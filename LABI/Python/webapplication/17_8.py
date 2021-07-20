import requests

url = "http://localhost:8080/form"
values = {"nome": "Ana", "idade": 20}
r = requests.post(url, data=values)
print(r.status_code)