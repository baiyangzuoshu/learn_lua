for i,v in pairs(_G) do
    --print(i,v)
end

function foo()
    a=10
    setfenv(1,{})
    print(a)
end
foo()