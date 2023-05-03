# Metaprogramming
điều khiển 1 chương trình khác

# Reflection (cho phép kiểm tra trạng thái cấu trúc của chương trình)

- Kiểm tra các đối tượng trong hệ thống
ObjectSpace.each_object(Class){|c| puts c}

- Bao nhiêu method có thể sử dụng
"Some string".methods

- có thể gọi đc đối tượng này ko
"".repond_to?(:length)
trả về true, false

- Kiểm tra kiểu dữ liệu
"".kind_of(Numeric)



--> refliction kiểm tra trạng thái cấu trúc của chương trình
# 1 số hàm cơ bản
- Hàm send(): không đc khuyển khích do vi phạm tính đóng gói
- respond_to? : nếu object có phản hồi
- define_method(): sử dụng tạo method linh động
- method_mising(): chấp nhận 3 tham số đầu vào, cho phép truy cập vào đối tượng 
```ruby
class Caller
 def method_missing(m, *args, &block)
 puts "Called #{m} with #{args.inspect} and #{block}"
 end
end
Caller.new.anything
# => Called anything with [ ] and
Caller.new.anything(3, 4) {something}
# => Called anything with [3, 4] and #<Proc:0x02efd664@tmp2.rb:7>
```
khi gọi methdo anything nhưng chưa đc tạo nó sẽ nhảy vào method_mising

- eval(): thực thi code trong 1 string
```ruby
def a
    eval('class C; def test () puts ("ok") end end')
end
```
Nhược điểm: khiến chương trình chạy chậm lại. Khó quản lý dữ liệu

- instance_variable_get(): trả về giá trị của biến

- instance_variable_set(): Đặt các giá trị tham số đầu vào


# hàm nâng cao


