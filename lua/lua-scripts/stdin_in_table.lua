a = {} -- Empty Constructor
for i = 1, 10 do
	a[i] = io.read()
end
for i, line in ipairs(a) do
	print(line)
end