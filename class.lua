Student={
    name="student"
}

function Student:sayName()
    print(self.name)
end

function Student:setName(name)
    self.name = name
end

function Student:new(o)
    local t=o or {}
    setmetatable(t,self)
    self.__index=self
    --self.__newindex=self
    return t
end

local a={x=1,y=2}
local b={}
setmetatable(b,a)--元表关系
--setmetatable(a,a)
a.__index=a--元方法
print(b.c)

-- local t=Student:new()
-- print(t.name)
-- t:sayName()
-- t:setName("maomao")
-- t:sayName()

Teacher={
    name="teacher"
}

function  Teacher:sayName()
    print(self.name)
end

function  Teacher:new(o)
    local t=o or {}
    setmetatable(t,self)
    self.__index=self
    return t
end

local t=Teacher:new()
print(t.name)
print(t:sayName())