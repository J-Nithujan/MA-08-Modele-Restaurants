
import os

import requests
import lxml  # ensure 
from bs4 import BeautifulSoup

sess = requests.Session()

url = "https://www.just-eat.ch/fr/livraison/repas/lausanne-1003"

resp = sess.get(url)
soup = BeautifulSoup(resp.content.decode(encoding=resp.encoding), "lxml")

tags = soup.find_all(attr={"class": "..."})
