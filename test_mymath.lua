-- local mymath=require("./mymath")
-- local num1=1
-- local num2=2
-- print(mymath.add(num1,num2))

-- mymath = {x = 10, y = 20} 
-- local res = require("mymath") 
-- print(res)
-- print(mymath.x)

require("mymath1")
for i,v in pairs(package.loaded) do
    print(i,v)
end
print(".............................")
for i,v in pairs(package.preload) do
    print(i,v)
end
print(package.path)
print(package.cpath)
