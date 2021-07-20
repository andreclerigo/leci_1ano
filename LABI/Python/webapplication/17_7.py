import requests

'''
f = requests.get("http://www.python.org")
print(f.status_code)
'''

f = requests.get("https://www.ua.pt")
print(f.status_code)
print(f.headers['content-type'])
f.encoding = 'utf-8'
print(f.content)

#Falta trabalhar o time