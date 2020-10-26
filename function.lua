function add(x,y)
    return x+y
end

function printResult(func,a,b)
    print(func(a,b));
end

function func(...)--...:占位符
    local v={...}--error:...
    for i,v in pairs(v) do
        print(i,v)
    end
end

function func2(...)
    local v=table.pack(...);
    for i,v in pairs(v) do
        print(i,v)
    end
end

-- print(select(1,"a",1,2))
-- print(select(4,"a,",1,2,3));
-- print(select("#",1,2,3,5));

function func3(...)
    for i=1,select("#",...) do
        print(select(i,...))
    end
end
--
function tt(arr)
    local max=#arr
    local index=0
    return function()
        index=index+1
        if(index<=max) then
            return index,arr[index]
        end
    end
end

local arr={1,2,3,4,5,6,x=1,y=2};

for i,v in tt(arr) do
    print(i,v)
end
--
for i,v in ipairs(arr) do
    print(i,v)
end
do
    local _f,t,k1=ipairs(arr)
    while true do
        local k,v=_f(t,k1);
        if nil==v then break end
        k1=k;
        print(k,v)
    end
end

