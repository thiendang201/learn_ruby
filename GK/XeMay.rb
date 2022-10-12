require './PhuongTien'

class XeMay < PhuongTien
  attr_accessor :congSuat261, :dungTichBinhXang261

  def initialize(id261, hangSX261, namSX261, dongXe261, giaBan261, bienSo261, mauXe261, congSuat261, dungTichBinhXang261)
    super(id261, hangSX261, namSX261, dongXe261, giaBan261, bienSo261, mauXe261)
    @congSuat261 = congSuat261
    @dungTichBinhXang261 = dungTichBinhXang261
  end

  def show
    super
    puts "cong suat: #{@congSuat261}"
    puts "dung tich binh xang: #{@dungTichBinhXang261}"
  end
end