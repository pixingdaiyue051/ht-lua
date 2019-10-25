mytbl = setmetatable({k1 = 2, k2 = 6, k3 = 9}, {__index = { k3 = "33", k4 = "5f"}})
metamytbl = getmetatable(mytbl)

for mk, mv in pairs(metamytbl) do
	print(mk, mv)
	for k, v in pairs(mv) do
		print(k, v)
	end
end

print(mytbl.k1)
print(mytbl.k2)
print(mytbl.k3)
print(mytbl.k4)
--__newindex为缺少索引的key追加方法
mytbl = setmetatable({k1 = "kiu8", k2 = "5re"}, {
	__newindex = function(mytbl, k, v)
		rawset(mytbl, k, string.format("[%s/%d]", v, 30))
	end
})
mytbl.k2 = "6te3"
mytbl.k3 = 4
print(mytbl.k1, mytbl.k2, mytbl.k3)

--__call调用其他列表时优先访问方法
mytbl = setmetatable({k1 = 80}, {
	__call = function(mytbl, othertbl)
		local sum = 0
		for k, v in pairs(othertbl) do
			sum = sum + v
		end
		for k, v in pairs(mytbl) do
			sum = sum + v
		end
		print(#mytbl)
		print(#othertbl)
		return sum, sum / (#mytbl + #othertbl)
	end
})
mytbl.k2 = "60"
mytbl.k3 = 4
print(mytbl({4, 6, 6}))

--__tostring修改默认显示方法,直接打印时调用,默认是列表在内存中的地址
mytbl = setmetatable({k1 = 80}, {
	__tostring = function(mytbl)
		return "打印...mytbl"
	end
})
print({})
print(mytbl)

--__add对应+符号操作
mytbl = setmetatable({k1 = 80}, {
	__add = function(mytbl, newtbl)
		local sum = ""
		for k, v in pairs(newtbl) do
			sum = sum .. v
		end
		for k, v in pairs(mytbl) do
			sum = sum .. v
		end
		return sum
	end
})
print(mytbl+{"4","th","year"})