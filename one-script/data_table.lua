function iterPrint(tbl)
	for k, v in pairs(tbl) do
		print(type(k), k, v)
	end
end

local tbl1 = {}
tbl1["a"] = "a"
tbl1[1] = 2
tbl1[2] = 5
tbl1.a = "b"
iterPrint(tbl1)

local tbl2 = {"apple", "pear", "orange", "grape"}
iterPrint(tbl2)

local tbl3 = {key1 = "apple", key2 = "pear", key3 = "orange", _3 = "grape"}
iterPrint(tbl3)

tbl1 = {"1","2","3","4","5"}
print("空白连接",table.concat(tbl1))
iterPrint(tbl1)

print("指定连接符连接",table.concat(tbl1,":"))
iterPrint(tbl1)

print("指定索引位置连接",table.concat(tbl1,":",3,5))
iterPrint(tbl1)

print("插入数据",table.insert(tbl1,"rf"))
iterPrint(tbl1)

print("指定位置插入数据",table.insert(tbl1,4,"iwuy"))
iterPrint(tbl1)

--print("指定不存在的位置插入数据",table.insert(tbl1,10,"ko"))
--iterPrint(tbl1)

print("从最后一位删除数据",table.remove(tbl1))
iterPrint(tbl1)

print("从指定位置删除数据",table.remove(tbl1,5))
iterPrint(tbl1)

--print("从不存在位置删除数据",table.remove(tbl1,20))
--iterPrint(tbl1)

print("列表排序",table.sort(tbl1))
iterPrint(tbl1)

print("列表排序comp",table.sort(tbl1))
iterPrint(tbl1)