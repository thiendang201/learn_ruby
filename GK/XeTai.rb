require './PhuongTien'

class XeTai < PhuongTien
  attr_accessor :trongTai261

  def initialize(id261, hangSX261, namSX261, dongXe261, giaBan261, bienSo261, mauXe261, trongTai261)
    super(id261, hangSX261, namSX261, dongXe261, giaBan261, bienSo261, mauXe261)
    @trongTai261 = trongTai261
  end

  def show
    super
    puts "Trong tai: #{@trongTai261}"
  end
end