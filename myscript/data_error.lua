local function add(a, b)
	assert(type(a) == 'number', '非数字入参a')
	assert(type(b) == 'number', '非数字入参b')
	local result = a + b
	return result
end

--print(add(1))

local function sub(a, b)
	error("error...")
	local result = a - b
	return result
end

print(sub(2,4))

print(pcall(add,1,3))