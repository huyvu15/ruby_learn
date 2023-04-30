# Array
- kế thừa từ class object
## create a array
a = []
array.new
%w(1, 2, 3)

## truy suất phần tử
- use index array
- method array

- khi truy suất phần tử không tồn tại trả về nil
a.first : return phần tử đầu
a.last: return phần tử cuối
a.take n: lấy ra n phần tử
a.at n: lấy ra phần tử thứ n
a.length: độ dài
a.empty: kiểm tra xem có rỗng ko
a.incoude? n: kiểm tra xem phần tử n có trong a ko
a.push n | a << n >: thêm n vào array
a.unshift n: thêm vào đầu
a.pop: lấy ptu cuối
a.insert(a, n): lấy ra phần tử ở vị trí xác định
a.delete(n)
a.uniq!: loại bỏ phần tử giống nhau
a.compact: trả về mảng mới ko chứa giá trị new nhưng ko làm thay đổi array gốc
a.compact!: như trên nhưng làm thay đổi array
## duyệt phần tử của mảng
a.each{|i| puts i}
a.map{|i| i ** 2}: sửa mảng nhưng ko làm thay đổi mảng gốc
a.map!....: làm thay đổi mảng gốc
## chọn ra các phần tử trong mảng thỏa mãn điều kiện nào đó
a.select{|i| i>3}: ko làm thay đổi chuỗi gốc
tương tự !
a.reject(|i| i == 4): loại bỏ 4 ra khỏi array
!
## phương thức
a.shuffle: sáo trộn mảng bất kỳ
a.sort: sx tăng dần
a.reverse: đảo ngược 
a.sample: lấy 1 phần tử ngẫu nhiên
a.max, min
a.freze: đóng băng ko cho sửa nếu cố tình sẽ báo lỗi
a là 1 mảng đc khởi tạo
