import urllib
from HTMLParser import HTMLParser

class MLStripper(HTMLParser):
	def __init__(self):
		self.reset()
		self.fed = []
	def handle_data(self, d):
		self.fed.append(d)
	def get_data(self):
		return ''.join(self.fed)

def strip_tags(html):
	s = MLStripper()
	s.feed(html)
	return s.get_data()

# address = "http://espn.go.com/"

# data = urllib.urlopen(address).read()
# with open('index.html','r') as myfile:
	# data = myfile.read().replace('\n','')
# print strip_tags(data)

        