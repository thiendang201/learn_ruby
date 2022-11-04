# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_11_04_025709) do
  create_table "saches", force: :cascade do |t|
    t.integer "stt"
    t.string "ma_hs"
    t.string "ho_va_ten"
    t.string "lop"
    t.string "ma_sach"
    t.string "ten_sach"
    t.string "ten_tac_gia"
    t.string "tu_sach"
    t.string "so_bm"
    t.date "ngay_muon"
    t.date "ngay_tra"
    t.integer "so_ngay"
    t.string "ghi_chu"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
