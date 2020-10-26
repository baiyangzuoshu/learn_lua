print(#{1,2,3,4})
--print(#[1,2,3,4])

local  tt={["kk"]=111};
tt.y="y";
local   val="newKey";
tt[val]="val"
print(tt.kk,tt["kk"])
print(tt.y,tt["y"])
print(tt.val,tt["val"])

local a={x=100,y=200};
print(a.x,a.y);
local b=a;
b.a=200;b.y=400;
print(b.a,a.y)

for i,v in ipairs(a) do
    print(i,v)
end

local c={1,2,3,4,5,x=0};
for i,v in pairs(c) do
    print(i,v)
end