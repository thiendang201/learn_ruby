require "application_system_test_case"

class SachesTest < ApplicationSystemTestCase
  setup do
    @sach = saches(:one)
  end

  test "visiting the index" do
    visit saches_url
    assert_selector "h1", text: "Saches"
  end

  test "should create sach" do
    visit saches_url
    click_on "New sach"

    fill_in "Ghi chu", with: @sach.ghi_chu
    fill_in "Ho va ten", with: @sach.ho_va_ten
    fill_in "Lop", with: @sach.lop
    fill_in "Ma hs", with: @sach.ma_hs
    fill_in "Ma sach", with: @sach.ma_sach
    fill_in "Ngay muon", with: @sach.ngay_muon
    fill_in "Ngay tra", with: @sach.ngay_tra
    fill_in "So bm", with: @sach.so_bm
    fill_in "So ngay", with: @sach.so_ngay
    fill_in "Stt", with: @sach.stt
    fill_in "Ten sach", with: @sach.ten_sach
    fill_in "Ten tac gia", with: @sach.ten_tac_gia
    fill_in "Tu sach", with: @sach.tu_sach
    click_on "Create Sach"

    assert_text "Sach was successfully created"
    click_on "Back"
  end

  test "should update Sach" do
    visit sach_url(@sach)
    click_on "Edit this sach", match: :first

    fill_in "Ghi chu", with: @sach.ghi_chu
    fill_in "Ho va ten", with: @sach.ho_va_ten
    fill_in "Lop", with: @sach.lop
    fill_in "Ma hs", with: @sach.ma_hs
    fill_in "Ma sach", with: @sach.ma_sach
    fill_in "Ngay muon", with: @sach.ngay_muon
    fill_in "Ngay tra", with: @sach.ngay_tra
    fill_in "So bm", with: @sach.so_bm
    fill_in "So ngay", with: @sach.so_ngay
    fill_in "Stt", with: @sach.stt
    fill_in "Ten sach", with: @sach.ten_sach
    fill_in "Ten tac gia", with: @sach.ten_tac_gia
    fill_in "Tu sach", with: @sach.tu_sach
    click_on "Update Sach"

    assert_text "Sach was successfully updated"
    click_on "Back"
  end

  test "should destroy Sach" do
    visit sach_url(@sach)
    click_on "Destroy this sach", match: :first

    assert_text "Sach was successfully destroyed"
  end
end
