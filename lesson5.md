# vòng lặp for (lặp đi lặp lại 1 phần tử)
Cú pháp
```ruby
for i in 0..5
    puts "Value of local variable is #{i}
end
```

## break
```ruby
for i in 0..5
    if i > 2 then
        break
    end
    puts "value of local variable is #{i}"
end
```
## next
```ruby
for i in 0..5
    if i < 2 then
        next
    end
    puts "value of local variable is #{i}"
end
```

##  ví dụ
```ruby
string = ["one", "two", "four", "five"]
string.inject(0) do |sum, str|
    next if str.size == 4
    sum + str.size
end
```
--> trả về nill, làm sao để hàm trả về kết quả đúng
```ruby
string = ["one", "two", "four", "five"]
string.inject(0) do |sum, str|
    next sum if str.size == 4 # sau khi next giá trị sẽ đc gắn vào biến sum và lưu lại ở vòng lặp sau
    sum + str.size
end
```
--> 6
## Redo:thực hiện lại 1 hành động
```ruby
# hàm nhập vào 1 số chẵn
def num 
    for i in 0..3
        print "enter a number: "
        num = gets.to_i

        if num % 2 != 0
            redo # nếu nhập sai sẽ bắt đầu lại vòng lặp
        end
        puts "i: #{i} - so ban nhap la #{num}"
    end
end
```
--> vòng lặp 3 lần khi nhập đúng 3 lần và thoát
## Retry: try again khi gặp exception
- lưu ý: chương trình có thể rơi vào vòng lặp vô hạn nếu ko có cơ chế dừng
```ruby
begin
    retries ||= 0 # gắn giá trị = 0
    puts "try ##{ retries }"
    raise "the roof"# in ra lỗi
rescue
    retry if (retries +=1) < 3 # nếu < 3 thì lại thực hiện lại đến rescue
end
```
# Select, map, inject
## map: lấy tất cả đối tượng sử dụng chúng và chạy biểu thức trong block
```ruby
my_array = [1, 2, ,3 4, 5, 6, 8, 100]
my_array.map{|item| item *2} # nhân all phần tử cho 2
my_array.map{|item| item %2} # chia all phần tử cho 2
my_array.map{|item| item %2 == 0} # nhân all phần tử cho 2
[false, true, false, true, false, true, false, true, true]

```
##select : trả ra các giá trị thỏa mãn 
```ruby
my_array.select{|item| item %2 == 0} 
#[2, 4, 6, 8, 100]
```
- Có thể sử dụng select trong hash
## inject : cung cấp 1 biến số mà cập nhập giá trị của biến số khi mỗi phần tử đc duyệt qua

