require './Oto'
require './XeMay'
require './XeTai'
require './QLPTGT'

ql261 = QLPT.new
# ql.themCB(NhanVien.new('Thien', 21, 'nam', 'hue', 'fe'))
# ql261.hienThiDS

chon261 = -1
while chon261 != 0 do
  puts
  puts "1 - Them phuong tien"
  puts "2 - Xoa phuong tien"
  puts "3 - Tim kiem phuong tien"
  puts "4 - hien thi danh sach phuong tien"
  puts "0 - Thoat"
  print "Chon: "
  chon261 = gets.to_i
  puts
  case chon261
    when 1
      loai261 = 0
      while loai261 < 1 || loai261 > 4 do
        puts "1 - Oto"
        puts "2 - Xe may"
        puts "3 - Xe tai"
        print "Chon loai phuong tien: "
        loai261 = gets.to_i
      end
      print "ID: "
      id261 = gets
      print "Hang san xuat: "
      hangSX261 = gets
      print "nam san xuat: "
      namSX261 = gets
      print "dong xe: "
      dongXe261 = gets
      print "gia ban: "
      giaBan261 = gets
      print "bien so: "
      bienSo261 = gets
      print "mau xe: "
      mauXe261 = gets

      case loai261
        when 1
          print "so cho ngoi: "
          soChoNgoi261 = gets
          print "kieu dong co: "
          kieuDongCo261 = gets
          print "nhien lieu: "
          nhienLieu261 = gets
          print "so tui khi: "
          soTuiKhi261 = gets
          print "ngay dang kiem: "
          ngayDangKiem261 = gets
          ql261.themPT(Oto.new(id261, hangSX261, namSX261, dongXe261, giaBan261, bienSo261, mauXe261, soChoNgoi261, kieuDongCo261, nhienLieu261, soTuiKhi261, ngayDangKiem261))
        when 2
          print "cong suat: "
          congSuat261 = gets
          print "dung tich binh xang: "
          dungTichBinhXang261 = gets
          ql261.themPT(XeMay.new(id261, hangSX261, namSX261, dongXe261, giaBan261, bienSo261, mauXe261, congSuat261, dungTichBinhXang261))
        else
          print "Trong tai: "
          trongTai261 = gets
          ql261.themPT(XeTai.new(id261, hangSX261, namSX261, dongXe261, giaBan261, bienSo261, mauXe261, trongTai261))
      end
      system("cls")
    when 2
      ql261.hienThiBienSoID
      print "Nhap ID can xoa: "
      id261 = gets
      kq261 = ql261.XoaPT(id261)
      if kq261
        puts 'Xoa thanh cong!'
      else
        puts 'Xoa that bai!'
      end
      
    when 3
      loai261 = 0
      while loai261 < 1 || loai261 > 4 do
        puts "1 - Tim theo hang"
        puts "2 - Tim theo mau"
        puts "3 - Tim theo bien so"
        print "Chon loai tim kiem: "
        loai261 = gets.to_i
      end
      search261 = ""
      while search261 == "" do
        print "Nhap tu khoa: "
        search261 = gets
      end
      kq261 = []
      case loai261
        when 1
          kq261 = TimTheoHangSX(search261)
        when 2
          kq261 = TimTheoMau(search261)
        else
          kq261 = TimTheoBienSo(search261)
        end
        puts
        puts "Ket qua tim kiem"
        kq261 = ql261.timKiem(search261)
          kq261.each { |pt261| 
          puts '-------------------'
          pt261.show 
          puts '-------------------' 
        }
      system("pause")
      system("cls")
    when 4
      ql261.hienThiDS
      system("pause")
      system("cls")
    when 0
      puts "Da thoat!"
    else
      puts "Khong hop le"
  end
end