require './PhuongTien'

class Oto < PhuongTien
  attr_accessor :soChoNgoi261, :kieuDongCo261, :nhienLieu261, :soTuiKhi261, :ngayDangKiem261

  def initialize(id261, hangSX261, namSX261, dongXe261, giaBan261, bienSo261, mauXe261, soChoNgoi261, kieuDongCo261, nhienLieu261, soTuiKhi261, ngayDangKiem261)
    super(id261, hangSX261, namSX261, dongXe261, giaBan261, bienSo261, mauXe261)
    @soChoNgoi261 = soChoNgoi261
    @kieuDongCo261 = kieuDongCo261
    @nhienLieu261 = nhienLieu261
    @soTuiKhi261 = soTuiKhi261
    @ngayDangKiem261 = ngayDangKiem261
  end

  def show
    super
    puts "so cho ngoi: #{@soChoNgoi261}"
    puts "kieu dong co: #{@kieuDongCo261}"
    puts "nhien lieu: #{@nhienLieu261}"
    puts "so tui khi: #{@soTuiKhi261}"
    puts "ngay dang kiem: #{@ngayDangKiem261}"
  end
end