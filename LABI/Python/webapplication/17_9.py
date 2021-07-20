import requests

serviceurl = "https://nominatim.openstreetmap.org/search.php?format=json&q=%s"
r = requests.get(serviceurl)
print(r.json())