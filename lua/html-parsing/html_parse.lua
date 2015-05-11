pcall(require, "luarocks.loader")
local htmlparser = require("htmlparser")

-- local f = assert(io.open('index.html',r))

htmlstring = io.read("*all") 

local root = htmlparser.parse(htmlstring)
local elements = root("*")

for _,e in ipairs(elements) do
    print(e.name)
    local subs = e("#id")
    for _,sub in ipairs(subs) do
        print("", sub.name)
    end
end