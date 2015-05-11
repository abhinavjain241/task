local cjson = require "cjson"
local cjson2 = cjson.new()
local cjson_safe = require "cjson.safe"

io.input("query.json")

-- text = '{ "op" : "create" , "data" : [{"first" : "this"}, {"second" : "is" },{"third": "abhinav"} ] }'

local text = [[
{
	"operation" : "create",
	"data" : [
		{
			"name" : "Abhinav",
			"age" : "20",
			"gender" : "Male"
		},
		{
			"name" : "Hardik",
			"age" : "18",
			"gender" : "Male"
		},
		{
			"name" : "Apoorva",
			"age" : "25",
			"gender" : "Female"
		}
	]
}
]]

value = cjson.decode(text)

print(value)

for i = 1, #value.data do
		print(value.data[i].name)
		print(value.data[i].age)
		print(value.data[i].gender)
end

a = {}



-- local json = require("dkjson")

-- local str = [[
-- {
-- 	"operation" : "create",
-- 	"data" : [
-- 		{
-- 			"name" : "Abhinav Jain",
-- 			"age" : "20",
-- 			"gender" : "Male"
-- 		},
-- 		{
-- 			"name" : "Hardik",
-- 			"age" : "18",
-- 			"gender" : "Male"
-- 		},
-- 		{
-- 			"name" : "Apoorva Sharma",
-- 			"age" : "25",
-- 			"gender" : "Female"
-- 		}
-- 	]
-- }
-- ]]

-- local obj, pos, err = json.decode(str, 1, nil)

-- if err then
-- 	print ("error:", err)
-- else
-- 	print ("operation:", obj.operation)
-- 	for i = 1,#obj.data do
-- 		for j = 1, #obj.data[i] do
--  			print(i, obj.data[i][j])
-- 		end
-- 	end
-- end