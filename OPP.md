OPP
- tất cả mọi thứ trong ruby đều là OPP
- CamelCase
## phương thức khởi tạo
```ruby
class Box
 def initialize w, h
    # assign instance variables
    @width, @height = w, h
 end
end

# create object
box = Box.new 10, 20
```
# Accessor & Setter
Truy cập bằng các phương thức từ bên ngoài class
# Instance method
```ruby
#instance method
def getArea # put in class
    @width * @ height
end
```
## class method
Gọi thông quá lớp không cần khởi tạo 1 object
3 cách định nghĩa class method
class Class A
class << self
classA.class_method3
## mức độ truy cập tương ứng

## Inheritance (kế thừa)
sử dụng Animal < Dog để biểu diễn tính kế thừa

## Polymorphism (đa hình)





