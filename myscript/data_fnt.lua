--全局函数
function maxNumber(i,j)
	if(i > j) then
		result = i
	else
		result = j
	end
	return result
end

local h = maxNumber(5,7)
print(h)
print(result)--此处result是全局变量

--全局函数-带返回值
function maxNum(i,j)
	local result1, result2 = 0, 0
	if(i > j) then
		result1 = i
	else
		result2 = j
	end
	return result1, result2
end

local h,k = maxNum(5,7)
print(h,k)
print(result1,result2)--此处result1, result2本是全局变量，将其改为local则只能在函数体内使用

--可变长度参数
function average(...)
   local result = 0
   local arg={...}    -- arg 为一个表，局部变量
   for i,v in ipairs(arg) do
      result = result + v
   end
--   print("总共传入 " .. #arg .. " 个数")
   return result, result / #arg, result / select("#",...)
end
print("10,5,3,4,5,6", average(10,5,3,4,5,6))