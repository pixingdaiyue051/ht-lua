--if
print("if流程控制")
local b = 0
if(b) then
	print("true")
else
	print("false")
end
if(b > 1) then
	print("b > 1")
elseif(b > 10) then
	print("b > 10")	
else
	print("anything")
end
-- while
print("while")
local a = 4
while(a < 10) do
	print(a)
	a = a + 1
end
-- for-1数值迭代,默认步长1
print("for数值迭代,默认步长1")
for i = 1,10 do
	print(i)
end
print("for数值迭代,自定义步长")
for i = 1,10,4 do
	print(i)
end
-- for泛型迭代
print("for泛型迭代,ipairs只显示number")
tb = {"one","two","three"}
for k,v in ipairs(tb) do
	print(k,v)
end
print("for泛型迭代,pairs显示所有")
tb = {one="one",two="two",three="three"}
for k,v in pairs(tb) do
	print(k,v)
end
print("repeat...until循环，类似逻辑取反的do..while")
a = 10
repeat
	print(a)
	a = a - 1
until(a < 1)