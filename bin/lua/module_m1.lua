m = {}
 
-- 定义一个常量
local cons2 = "这是一个local常量"
m.cons1 = "这是一个常量"

-- 定义一个函数
local function func3()
    print("这是一个私有函数")
end

function m.func1()
    print("这是一个公有函数")
end

function m.func2()
	print(cons2)
	func3()
end
 
return m