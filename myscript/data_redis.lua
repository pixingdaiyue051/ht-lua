local my_redis = require 'module_my_redis'

local conf_f_test = {
  host = 'ecloud-test.redis.rds.aliyuncs.com',
  auth = 'R%CE#aq5knacKJ7M',
  db = 4
}

local conf_jxt_test = {
  host = '8.136.34.182',
  auth = 'H3JgQG2eqqQ98&vQk',
  db = 4
}

my_redis.connect_to(conf_f_test)

local key_p = 'family_call_platform:permission*'
local res_tbl = my_redis.keys_by_pattern(key_p)
for k, v in pairs(res_tbl) do
  print(type(k), k, v)
end

local res_num = my_redis.sequence_num('test:seq:110', '202106030000', 864000)
print(res_num)