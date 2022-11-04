class CreateSaches < ActiveRecord::Migration[7.0]
  def change
    create_table :saches do |t|
      t.integer :stt
      t.string :ma_hs
      t.string :ho_va_ten
      t.string :lop
      t.string :ma_sach
      t.string :ten_sach
      t.string :ten_tac_gia
      t.string :tu_sach
      t.string :so_bm
      t.date :ngay_muon
      t.date :ngay_tra
      t.integer :so_ngay
      t.string :ghi_chu

      t.timestamps
    end
  end
end
