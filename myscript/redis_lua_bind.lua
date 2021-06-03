-- 获取锁
local result = redis.call('setnx', KEYS[1], KEYS[1])
if (result == 1) then
	result = redis.call('pexpire', KEYS[1], ARGV[1])
end
return result

-- 按模式删除匹配的key
local scanResultIndex = 0
while scanResultIndex ~= '0' do
   local idx = tonumber(scanResultIndex)
   local scanResult = redis.call('scan', idx, 'match', KEYS[1])
   local scanResultTable = scanResult[2]
   for k, v in pairs(scanResultTable) do
       redis.call('del', v)
   end
   scanResultIndex = scanResult[1]
end

-- 自增生成序列号
local result = redis.call('setnx', KEYS[1], ARGV[1])
if (result == 1) then
    redis.call('pexpire', KEYS[1], ARGV[2])
    result = tonumber(ARGV[1])
else
    result = redis.call('incr', KEYS[1])
end
return result