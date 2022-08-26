puts "Xin chào Đặng Văn Thiện 1911505310261\n\n"

print "Nhập số bất kì: "
a = gets
puts "Số vừa nhập là: #{a}\n"

print "Nhập vào 2 số: "
b,c = gets.split
puts "Giá trị lớn nhất trong 2 số: #{b > c ? b : c}"