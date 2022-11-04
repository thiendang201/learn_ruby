class PhanSo
  attr_reader :tuSo, :mauSo

  def initialize(tuSo, mauSo)
    @tuSo = tuSo
    @mauSo = mauSo
  end

  def to_s
    if @tuSo == @mauSo
      return @tuSo
    end
    return "#{@tuSo}/#{@mauSo}"
  end

  def + (p2)
    tu = @tuSo * p2.mauSo + @mauSo * p2.tuSo
    mau = @mauSo * p2.mauSo
    return PhanSo.new(tu, mau)
  end

  def - (p2)
    tu = @tuSo * p2.mauSo - @mauSo * p2.tuSo
    mau = @mauSo * p2.mauSo
    return PhanSo.new(tu, mau)
  end

  def * (p2)
    tu = @tuSo * p2.tuSo
    mau = @mauSo * p2.mauSo
    return PhanSo.new(tu, mau)
  end

  def / (p2)
    tu = @tuSo * p2.mauSo
    mau = @mauSo * p2.tuSo
    return PhanSo.new(tu, mau)
  end

  def UCLN(a, b)
    r = a % b
    return r == 0 ? b : UCLN(b, r)
  end

  def rutGon
    uc = UCLN(@tuSo, @mauSo)
    @tuSo = @tuSo / uc
    @mauSo = @mauSo /uc
  end
end

def CongPhanSo (p1, p2)
  tu = p1.tuSo * p2.mauSo + p1.mauSo * p2.tuSo
  mau = p1.mauSo * p2.mauSo
  return PhanSo.new(tu, mau)
end

def TruPhanSo (p1, p2)
  tu = p1.tuSo * p2.mauSo - p1.mauSo * p2.tuSo
  mau = p1.mauSo * p2.mauSo
  return PhanSo.new(tu, mau)
end

def NhanPhanSo (p1, p2)
  tu = p1.tuSo * p2.tuSo
  mau = p1.mauSo * p2.mauSo
  return PhanSo.new(tu, mau)
end

def ChiaPhanSo (p1, p2)
  tu = p1.tuSo * p2.mauSo
  mau = p1.mauSo * p2.tuSo
  return PhanSo.new(tu, mau)
end

def nhapPhanSo
  print "Nhap tu so: "
  tuSo = gets.to_i
  mauSo = -1
  loop do
    print "Nhap mau so: "
    mauSo = gets.to_i

    if mauSo != 0
      break
    end
  end
  return PhanSo.new(tuSo, mauSo)
end

puts "Nhap phan so 1"
p1 = nhapPhanSo

puts "Nhap phan so 2"
p2 = nhapPhanSo

cong = CongPhanSo(p1, p2)
tru = TruPhanSo(p1, p2)
nhan = NhanPhanSo(p1, p2)
chia = ChiaPhanSo(p1, p2)

puts "KHONG OVERLOADING - Tinh toan 2 phan so #{p1} & #{p2}"
puts "Cong: #{cong}"
puts "Tru: #{tru}"
puts "Nhan: #{nhan}"
puts "Chia: #{chia}"

puts "CO OVERLOADING - Tinh toan 2 phan so #{p1} & #{p2}"
puts "Cong: #{(p1 + p2).rutGon}"
puts "Tru: #{(p1 - p2).rutGon}"
puts "Nhan: #{(p1 * p2).rutGon}"
puts "Chia: #{(p1 / p2).rutGon}"