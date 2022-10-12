class QLPT
  attr_accessor :DSPT261

  def initialize()
    @DSPT261 = []
  end

  def themPT(phuongTien261)
    @DSPT261 << phuongTien261
  end

  def TimTheoHangSX(hangSX261)
    result = []
    @DSPT261.each do |pt|
        if pt.hangSX261 == hangSX261
            result << pt
        end
    end
    return result
  end

  def TimTheoMau(mauXe261)
    result = []
    @DSPT261.each do |pt|
        if pt.mauXe261 == mauXe261
            result << pt
        end
    end
    return result
  end

  def TimTheoBienSo(bienSo261)
    result = []
    @DSPT261.each do |pt|
        if pt.bienSo261 == bienSo261
            result << pt
        end
    end
    return result
  end

  def timKiem(search261)
    theoHang261 = TimTheoHangSX(search261)
    theoMau261 = TimTheoMau(search261)
    theoBienSo261 = TimTheoBienSo(search261)
    rs261 = theoHang261.concat(theoMau261).concat(theoBienSo261)
    return rs261
  end

  def XoaPT(id261)
    @DSPT261.each do |pt|
        if pt.id261 == id261
            @DSPT261.delete(pt)
            return true
        end
    end
    return false
  end

  def hienThiDS
    @DSPT261.each { |pt261| 
      puts '-------------------'
      pt261.show 
      puts '-------------------' 
    }
  end

  def hienThiBienSoID
    @DSPT261.each { |pt261| 
      puts '-------------------'
      puts "ID: #{pt261.id261} | Bien so: #{pt261.bienSo261}"
      puts '-------------------' 
    }
  end
end