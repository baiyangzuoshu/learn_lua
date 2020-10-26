print("Hello World!");

function aa()
    for i=0,10 do
        print("i:",i);
    end
end

print(type(1.00));
print(type(1));
print(type("1"));
print(type(true));
print(type(aa));
print(type(nil));
print(type({}));

local i=10;
while(i>0)
do
    if(0==i%2) then
        print("i:",i);
    elseif (1~=i) then
        print("i~=1:",i);
    end
    i=i-1;
end

print(1 and 2);
print(1 or 2);
print(not 2);

repeat
    print("repeat")
until true

local arr={1,2,"3","ab"};

for k,v in ipairs(arr) do
    print(k,v)
end

