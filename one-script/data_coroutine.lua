-- 创建一个协程(协同程序)，任何时段内只有一个协程在运行，只有显示调用了yield才会将其挂起
co = coroutine.create(
    function(i)
        print(i);
    end
)
print(coroutine.running())
-- 查看当前协程所处的状态
print(coroutine.status(co)) -- 使用create创建协程，立马进入suspended挂起
coroutine.resume(co, 1)
print(coroutine.status(co)) -- 启用co协程，运行之后即结束dead
-- 使用协程包装一个函数，返回一个函数
co = coroutine.wrap(
	function(i)
		print(i)
	end
)
--print(coroutine.status(co)) -- 使用create创建协程，立马进入suspended挂起
co(1)
--print(coroutine.status(co)) -- 启用co协程，运行之后即结束dead
print(coroutine.running())