print(package.cpath)
print(package.path)

local m1 = require("data_module1")

print(m1.cons1)

print(m1.func1())
print(m1.func2())