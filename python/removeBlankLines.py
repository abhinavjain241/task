import fileinput
for line in fileinput.FileInput("BSParseOutput.log",inplace=1):
    if line.rstrip():
        print line