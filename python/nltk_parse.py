# import nltk
import urllib
from bs4 import BeautifulSoup

address = "http://espn.go.com/"

# html = urllib.urlopen(address).read()
with open('index.html','r') as myfile:
	html = myfile.read().replace('\n','')

soup = BeautifulSoup(html)

print soup.get_text()

# clean_text = nltk.clean_html()