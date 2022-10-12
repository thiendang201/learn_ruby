class PhuongTien
  attr_accessor :id261, :hangSX261, :namSX261, :dongXe261, :giaBan261, :bienSo261, :mauXe261

  def initialize(id261, hangSX261, namSX261, dongXe261, giaBan261, bienSo261, mauXe261)
    @id261 = id261
    @hangSX261 = hangSX261
    @namSX261 = namSX261
    @dongXe261 = dongXe261
    @giaBan261 = giaBan261
    @bienSo261 = bienSo261
    @mauXe261 = mauXe261
  end

  def show
    print "ID: #{@id}"
    print "hang SX: #{@hangSX261}"
    print "nam SX: #{@namSX261}"
    print "dong xe: #{@dongXe261}"
    print "gia ban: #{@giaBan261}"
    print "bien so: #{@bienSo261}"
    print "mau xe: #{@mauXe261}"
  end
end