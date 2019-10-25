c = [[
	回答
	北岛
卑鄙是卑鄙者的通行证
高尚是高尚者的墓志铭

看吧
在那镀金的天空中飘满了死者弯曲的倒影

冰川纪过去了
为什么到处都是冰棱
好望角发现了
为什么死海里千帆相竟

我来到这个世界上
只带着纸 绳索和背影
为了在审判之前
宣读那些被判决了的声音

告诉你吧 世界
我不相信
纵使你脚下有一千名挑战者
就把我当做那第一千零一名

纵使你脚下有一千名挑战者
就把我当做那第一千零一名

我不相信天是蓝的
我不相信梦是假的
我不相信雷的回声
我不相信死无报应

如果海洋注定要决堤
就让所有苦水都注入我心中
如果陆地注定要上升
就让人类重新选择生存的峰顶

新的转机和闪闪的星斗
正在缀满没有遮拦的天空
那是五千年的象形文字
那是未来人们凝视的眼睛
]]
print(c)
b = "i am the king" .. " of the world"
print(b)
print("3" + 5)
print("3" + "5")
print("3" * 5)
print("3" * "5")
print("3.1" / "5.3")
print(#c)
print(string.len(c))
str = "abcdefghijk3"
print(string.upper(str))
print("转化大写后",str)
print(string.lower(str))
print("转化小写后",str)
print(string.gsub(str,"a","5^"))
print("替换后",str)
print(string.reverse(str))
print("翻转后",str)
print(string.find(str,"3"))
print("查询后",str)
print(string.rep(str,3))
print("复制后",str)
str = "abfee%s%d"
print(string.format(str,"7k",9))
print("格式化后",str)
str = "i am one of someone , the one"
print(string.match(str,"%a+"))
print("模式匹配后",str)
print(string.gmatch(str,"%a+"))
print("循环模式匹配后",str)