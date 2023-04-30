# Tìm hiều về method
- Tập hợp khối lệnh thực thi chức năng nào đó. Gọi thông quá các đối tượng
- bắt đầu bằng def <name> kết thúc bằng end
- có thể khai báo method với nhiều biến truyền vào
- ko cần phải có dấu () khi gọi method

## định nghĩa truyền không giới hạn tham số
### Tham số từ khóa
```ruby
def read_file(file:, read:)
    p file
    p record
end
# excute 
read_file file: "a.txt", record: 10
```
- trong 1 phương thưcs ko có return sẽ trả về giá trị của dòng cuối
- khi gặp return method sẽ end ngay lập tức
```ruby
def print_name(name)
    return name
end
print_name('huy')
```
## Class method and instance method
```ruby
#Example
class Invoice
 # class method
 def self.print_out
 "Printed out invoice"
 end
 # instance method
 def convert_to_pdf
 "Converted to PD"
 end
end
puts "1.Execute class method"
puts Invoice.print_out
puts "2.Execute instance method"
puts Invoice.new.convert_to_pdf
```
# Block, proc, lambda
## Block là những cái trong def 
- Không thể tái sử dụng
```ruby
# thực thi nhanh
upto(10){|x|}
```
## Proc: 
- tạo proc: proc.new
```ruby
square = proc.new do |n|
    n**2
end
square.call (2)
```
- có thể gán proc vào 1 biến và mang đi sử dungj
## Lambda
- Hàm ko tên, phương thức vô danh, không sử dụng tài nguyên máy tính
- biểu thức: a = lambda { statement }
- gọi phương thức vào .call()

```ruby
# example
puts " 1. execute square"
square = lambda {|n| n** 2}
puts "#{square}"
```
### sự khác nhau đối với proc
- 




