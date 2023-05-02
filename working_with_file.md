# Working with file

## creating file
my_file = File.new("path\", "w+") # 
my_fiel.close

Chế độ:
- r:
- w: yêu cầu file đã tồn tại
- w+: read and write(file exists)
- a+: thêm nội dung vào cuối file nếu đã tồn tại, nếu chưa thì tạo file mới

# thêm nội dung vào file
```ruby
irb :001 > sample = File.open("simple_file.txt", "w+")
=> #<File:simple_file.txt>
irb :002 > sample.puts("another example of writing to a file.")
=> nil
irb :003 > sample.close
=> nil
irb :004 > File.read("simple_file.txt")
=> "another example of writing to a file.\n"
```
## xóa file
File.delete("path/")



