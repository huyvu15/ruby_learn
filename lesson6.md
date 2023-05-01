# Conditionals (Câu lệnh điều khiển)
- Điều khiển
- Vòng lặp
## if statement
```ruby
#Syntax
if conditional [then]
 # write something here...
[elsif conditional [then]
 # write something here...]
[else
 # write something here...]
end
If modifier syntax (short if)
[code goes here] if condition
```
- Trong ruby cũng có toán tử 3 ngôi ? : như trong C. Là các ngắn gọn của if
tuy nhiên đọc khá khó hiểu khi code dài và khó dùng tùy trường hợp  
Ex: ans = (a % 2 == 0) ? "even number" : "odd number"

## Unless: kiểm tra đk bên trong nếu sai thì thực hiện
```ruby
unless conditional [then]
 code
[else
 code]
end
Unless modifier syntax (short unless)
[code goes here] unless conditional
```

ví dụ ngắn gọn
$var = 1
puts = "1 -- Value is set \n " if $var
puts = "2 -- Value is not set \n " unless $var

arr = [1, 2]
p 'arr not empty ' unless arr.empty?
p 'arr not empty ' arr.any?
# Case when: lệnh rẽ nhánh 
```ruby
#Example
$age = 5
case $age
when 0 .. 2
 puts "baby"
when 3 .. 6
 puts "little child"
when 7 .. 12
 puts "child"
when 13 .. 18
 puts "youth"
else
 puts "adult"
end
```
# Case in ( chỉ sử dụng đối với các version từ 3.0 trở lên)
```ruby
#Example
case ["a", 1, "b", "c", 2, "d", "e", "f", 3]
in [*pre, String => x, String => y, *post]
 p pre #=> ["a", 1]
 p x #=> "b"
 p y #=> "c"
 p post #=> [2, "d", "e", "f", 3]
end
```
