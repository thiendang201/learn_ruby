class Canbo261
  attr_accessor :hoTen261, :tuoi261, :gioiTinh261, :diaChi261

  def initialize(hoTen261, tuoi261, gioiTinh261, diaChi261)
    @hoTen261 = hoTen261
    @tuoi261 = tuoi261
    @gioiTinh261 = gioiTinh261
  end

  def to_s
    print "Hoten: #{@hoTen261} | tuoi: #{@tuoi261} | gioi tinh: #{@gioiTinh261} | dia Chi: #{@diaChi261}"
  end
end

class CongNhan < Canbo261
  attr_accessor :bac261

  def initialize(hoTen261, tuoi261, gioiTinh261, diaChi261, bac261)
    super(hoTen261, tuoi261, gioiTinh261, diaChi261)
    @bac261 = bac261
  end

  def to_s
    super
    print " | bac: #{@bac261}"
  end
end

class KySu < Canbo261
  attr_accessor :nganhDaoTao261

  def initialize(hoTen261, tuoi261, gioiTinh261, diaChi261, nganhDaoTao261)
    super(hoTen261, tuoi261, gioiTinh261, diaChi261)
    @nganhDaoTao261 = nganhDaoTao261
  end

  def to_s
    super
    print " | nganh dao tao: #{@nganhDaoTao261}"
  end
end

class NhanVien < Canbo261
  attr_accessor :congViec261

  def initialize(hoTen261, tuoi261, gioiTinh261, diaChi261, congViec261)
    super(hoTen261, tuoi261, gioiTinh261, diaChi261)
    @congViec261 = congViec261
  end

  def to_s
    super
    print " | cong viec: #{@congViec261} "
  end
end

class QLCB
  attr_accessor :DSCB261

  def initialize()
    @DSCB261 = []
  end

  def themCB(canbo261)
    @DSCB261 << canbo261
  end

  def timKiem(tenCB261)
    rs261 = @DSCB261.select{|cb261| cb261 if cb261.hoTen261.upcase.include? tenCB261.upcase}
    return rs261
  end

  def hienThiDS
    @DSCB261.each { |cb261| puts cb261 }
  end
end

ql261 = QLCB.new
# ql.themCB(NhanVien.new('Thien', 21, 'nam', 'hue', 'fe'))
ql261.hienThiDS

chon261 = -1
while chon261 != 0 do
  puts
  puts "1 - Them can bo"
  puts "2 - Tim kiem theo ho ten"
  puts "3 - hien thi danh sach can bo"
  puts "0 - Thoat"
  print "Chon: "
  chon261 = gets.to_i
  puts
  case chon261
    when 1
      loai261 = 0
      khac261 = ""
      while loai261 < 1 || loai261 > 4 do
        puts "1 - Cong nhan"
        puts "2 - Ky su"
        puts "3 - Nhan vien"
        print "Chon loai can bo: "
        loai261 = gets.to_i
      end
      print "Ho ten: "
      hoTen261 = gets
      print "Tuoi: "
      tuoi261 = gets
      print "Gioi tinh: "
      gioiTinh261 = gets
      print "Dia chi: "
      diaChi261 = gets

      case loai261
        when 1
          print "Bac: "
          khac261 = gets
          ql261.themCB(CongNhan.new(hoTen261, tuoi261, gioiTinh261, diaChi261, khac261))
        when 2
          print "Nganh dao tao: "
          khac261 = gets
          ql261.themCB(KySu.new(hoTen261, tuoi261, gioiTinh261, diaChi261, khac261))
        else
          print "Cong viec: "
          khac261 = gets
          ql261.themCB(NhanVien.new(hoTen261, tuoi261, gioiTinh261, diaChi261, khac261))
      end
      
    when 2
      ten261 = ""
      while ten261 == "" do
        print "Nhap ten can bo: "
        ten261 = gets
      end
      kq261 = ql261.timKiem(ten261)
      kq261.each { |cb261| puts cb261 }
    when 3
      ql261.hienThiDS
    when 0
      puts "Da thoat!"
    else
      puts "Khong hop le"
  end
end