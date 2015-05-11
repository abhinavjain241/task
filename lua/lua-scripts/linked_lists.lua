list = nil -- Declare empty list
list = {next = list, value = "v"}

for i = 1, 10 do
	local temp = io.read()
	list = {next = list, value = temp}
end


local l = list -- declare local variable l to refer to list
while l do -- while l is true
	print(l.value)
	l = l.next
end