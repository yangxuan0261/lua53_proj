 function test1( ... )
 	-- body
 	for i=1,2 do
	print("hello world - "..i)
end

local num20 = 0xff
 print("--- num20:"..num20)--255
local num21 = 2^4
 print("--- num21:"..num21)--16.0

 local num1 = 1
 local num2 = 0
 print("--- num1:"..num1)--1

 local num3 = num1 | num2 -- 或
 print("--- num3:"..num3) --1

 local num4 = num1 & num2 -- 与
 print("--- num4:"..num4) --0

 local num5 = num1 ~ num2 -- 异或
 print("--- num5:"..num5) --1

 local num6 = ~num1 -- 非 （-num1-1）
 print("--- num6:"..num6) -- -2

 local num7 = num1 << 3 -- 位移
 print("--- num7:"..num7) --8

 local num8 = num7 >> 1 -- 位移
 print("--- num8:"..num8) --4

 local num9 = 8 >> 5 -- 位移 超出位数本身
 print("--- num9:"..num9) --0

  local num10 = 1 >> -2 -- 位移 反向移动 
 print("--- num10:"..num10) --0
 end

b = 123

function test2( ... )
	-- body
	print("---".._ENV["b"])
	
end

 -- test1()
 -- test2()

a = 2
do  -- 私有环境
    local _ENV = {
    _G = _G,
    print = print,
    a = 14,
 	}
    print(a)  --> 14
end
print(a)  --> 2


function test1( ... )
	-- body
	local a = true and 123 or "hello"
	return a
end

print("--- "..test1())
