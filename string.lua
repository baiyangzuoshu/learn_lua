--"1"将会转为1.0
function aa()
    print(1+"1")
    print("1"+1)
    print(1+1)
    print("1"..1)
    print(1 .."1")
end

function bb()
    local str="sdfsdfs";
    print(string.upper(str));
    print(string.lower(str));
end
bb()

