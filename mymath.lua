local mymath={}--mymath={}全局包

function mymath.add(num1,num2)
    return num1 + num2
end

function mymath.sub(num1,num2)
    return num1 - num2
end

function mymath.mul(num1,num2)
    return num1 * num2
end

function mymath.div(num1,num2)
    return num1 / num2
end

return mymath