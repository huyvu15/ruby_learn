# Hash introduction
hash là cặp key-value duy nhất
## create hash
h = Hash.new
h = Hash["a": 1, "b":2]
h = {"a":1, "b":2}
## Truy cập đến cách phần tử trong hash qua key
h[:a] --> 1
h[:b] --> 2
h.keys : trả về mọi key
h.values: trả về mọi values
try_convert(h1): chuyển 
## So sánh hash
```ruby
h = Hash["a":100, "b":200, "c":300]
h1 = Hash["a":100, "b":200, "c":300, "d":400]
h2 = Hash["b":200, "c":300, "a":100]
h3 = Hash["a":100, "b":200, "c":400]

puts "#{h == h1}"
```
so sánh lần lượt số lượng phần tử, từng cặp giá trị của các key
## thay đổi các giá trị trong hash
h[:a] = 10
h.store "d", 4: thêm phần tử này vào hash
## phương thức làm việc với hash
h.each {|key, values| puts "#{key}: #{values}" }:lặp từng ptu 
h.each_values
h.each_key

