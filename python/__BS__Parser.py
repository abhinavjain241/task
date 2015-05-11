import sys
import urllib
from bs4 import BeautifulSoup

# html = urllib.urlopen(sys.argv[1]).read()
with open('index.html','r') as myfile:
	html = myfile.read().replace('\n','')

soup = BeautifulSoup(html)
texts = soup.findAll(text=True)

# [s.extract() for s in soup(['style', 'script', '[document]', 'head', 'title'])]

[s.extract() for s in soup(['style', 'script', '[document]'])]

visible_text = soup.getText()

print visible_text

# f = open('BSParseOutput.log', 'w')

# f.write(visible_text.encode('utf-8'))