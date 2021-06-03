local redis = require 'redis'
local client = nil
local conf_default = {
    host        = '127.0.0.1',
    port        = 6379,
    db          = 0,
    auth        = nil,
}

-- 自定义连接
function redis.connect_to(...)
  local args = ...
  if args then
    if args.host then conf_default.host = args.host end
    if args.port then conf_default.port = args.port end
    if args.db then conf_default.db = args.db end
    if args.auth then conf_default.auth = args.auth end
  end
  client = redis.connect(conf_default.host, conf_default.port)
  if conf_default.auth then client:auth(conf_default.auth) end

  local ping_rep = client:ping()
  assert(ping_rep, 'unabled to connect redis')
  print('redis connected')
  client:select(conf_default.db)
end

-- 按模式删除匹配的key
function redis.del_keys_by_pattern(pattern)
  local scan_res_idx = 0
  while scan_res_idx ~= '0' do
     local idx = tonumber(scan_res_idx)
     local scan_res = client:scan(idx,{match = pattern})
     local scan_res_tbl = scan_res[2]
     for k, v in pairs(scan_res_tbl) do
        client:del(v)
     end
     scan_res_idx = scan_res[1]
  end
end

-- 按模式搜索key
function redis.keys_by_pattern(pattern)
  local result = {}
  local scan_res_idx = 0
  while scan_res_idx ~= '0' do
     local idx = tonumber(scan_res_idx)
     local scan_res = client:scan(idx,{match = pattern})
     local scan_res_tbl = scan_res[2]
     for k, v in pairs(scan_res_tbl) do
       table.insert(result, v)
     end
     scan_res_idx = scan_res[1]
  end
  return result
end

-- 自增生成序列号
function redis.sequence_num(key, val, ttl) 
  local result = client:setnx(key, val)
  if (result) then
      client:expire(key, ttl)
      result = tonumber(val)
  else
      result = client:incr(key)
  end
  return result
end

return redis