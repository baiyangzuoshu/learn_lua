local env = {
    print = _G.print, 
    os = _G.os,
    math = _G.math, 
    call = _G.pcall
} -- 沙盒环境表，按需要添入允许的函数
function run_sandbox(code)
    local func, message = load(code)
    if not func then return nil, message end 
    local _ENV = env
    return call(func)
end
-- 5.3 中没有 loadstring -- 传入代码本身错误
chunk = "print(\"abc\") print(os.time()) print(math.pi)" 
run_sandbox(chunk)