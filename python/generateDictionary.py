from collections import defaultdict

f = open('BSParseOutput.log','r')

string = f.read()

d = defaultdict(int)

for word in string.split():
	d[word] += 1

for k,v in d.items():
	if v > 10:
		print (k + " : " + str(v))
		