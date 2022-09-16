# 1. khởi tạo class sinhvien
class SinhVien
    # 2. khởi tạo phương thức cơ bản
    def initialize(hoTen, lop)
        @hoTen = hoTen
        @lop = lop  
        @diemToan = 0
        @diemLy = 0
        @diemHoa = 0      
    end 

    # 3. Phương thức nhập điểm và tính trung bình
    def nhapDiem(diem, mon)
        case mon
            when "TOAN"
                @diemToan = diem
            when "LY"
                @diemLy = diem
            when "HOA"
                @diemHoa = diem
            else
                return
        end
    end

    def diemTrungBinh()
        sum = @diemToan + @diemHoa + @diemLy
        avg = sum.to_f / 3
        return avg
    end

    #4. Hàm hiển thị thông tin sinh viên
    def thongTin()
        print "Tên: #{@hoTen} Lớp: #{@lop}\n"
        puts "Điểm Toán: #{@diemToan}"
        puts "Điểm Lý: #{@diemLy}"
        puts "Điểm Hóa: #{@diemHoa}"
    end
end

sv = SinhVien.new("Thiện", "19T2")

sv.nhapDiem(7, "TOAN")
sv.nhapDiem(8, "LY")
sv.nhapDiem(9, "HOA")

sv.thongTin
puts "Điểm trung bình: #{sv.diemTrungBinh}"