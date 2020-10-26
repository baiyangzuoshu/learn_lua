local t1={}
local t2={}
setmetatable(t1,t2)
setmetatable(t2,t1)
print(getmetatable(t1),getmetatable(t2),t1,t2)

local a={1,2,3,4,5}
local b={1,2,3,4}

local t={}
function t.__add(a,b)
    local len=#a
    local ret={};
    for i=1,len do
        if nil==b[i] then
            break
        end
        ret[i]=a[i]+b[i];
    end
    return ret;
end
function t.__sub(a,b)
    local len=#a;
    local ret={}
    for i=1,len do
        if nil==b[i] then
            break
        end
        ret[i]=a[i]-b[i]
    end
    return ret
end
function t.__eq(a,b)
    local len=#a;
    for i=1,len do
        if nil==b[i] or a[i]~=b[i] then
            return false
        end
    end
    return true
end
--t.__index={x=1}
t.__index=function(...)--赋值
    local _t={...}
    for i,v in pairs(_t) do
        print("i,v=>",i,v)
    end
end
t.__newindex=function(...)--索引
    local _t={...}
    for i,v in pairs(_t) do
        print("i,v==>",i,v)
    end
end
t.__call=function(...)--表的伪函数
    local _t={...}
    for i,v in pairs(_t) do
        print("i,v===>",i,v)
    end
end
setmetatable( a, t )
setmetatable( b, t )
print(a(10))
--local c=a+b
--local d=a-b
--print(a==b,a.x)
-- for i,v in ipairs(c) do
--     --print(i,v)
-- end
-- for i,v in pairs(d) do
--     --print(i,v)
-- end

--a.x=1

Student={
    name="xiaoming",
}

function Student:say()
    print(self.name)
end

function Student:setName(name)
    self.name=name
end

function Student:new(o)
    local t=o or {}
    setmetatable(t,self)
    self.__index=self--不会形成循环？
    return t
end

local t=Student:new()
t:say()
t:setName("maomao")
Student:say()
t:say()


