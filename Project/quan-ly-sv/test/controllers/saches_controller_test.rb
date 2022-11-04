require "test_helper"

class SachesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sach = saches(:one)
  end

  test "should get index" do
    get saches_url
    assert_response :success
  end

  test "should get new" do
    get new_sach_url
    assert_response :success
  end

  test "should create sach" do
    assert_difference("Sach.count") do
      post saches_url, params: { sach: { ghi_chu: @sach.ghi_chu, ho_va_ten: @sach.ho_va_ten, lop: @sach.lop, ma_hs: @sach.ma_hs, ma_sach: @sach.ma_sach, ngay_muon: @sach.ngay_muon, ngay_tra: @sach.ngay_tra, so_bm: @sach.so_bm, so_ngay: @sach.so_ngay, stt: @sach.stt, ten_sach: @sach.ten_sach, ten_tac_gia: @sach.ten_tac_gia, tu_sach: @sach.tu_sach } }
    end

    assert_redirected_to sach_url(Sach.last)
  end

  test "should show sach" do
    get sach_url(@sach)
    assert_response :success
  end

  test "should get edit" do
    get edit_sach_url(@sach)
    assert_response :success
  end

  test "should update sach" do
    patch sach_url(@sach), params: { sach: { ghi_chu: @sach.ghi_chu, ho_va_ten: @sach.ho_va_ten, lop: @sach.lop, ma_hs: @sach.ma_hs, ma_sach: @sach.ma_sach, ngay_muon: @sach.ngay_muon, ngay_tra: @sach.ngay_tra, so_bm: @sach.so_bm, so_ngay: @sach.so_ngay, stt: @sach.stt, ten_sach: @sach.ten_sach, ten_tac_gia: @sach.ten_tac_gia, tu_sach: @sach.tu_sach } }
    assert_redirected_to sach_url(@sach)
  end

  test "should destroy sach" do
    assert_difference("Sach.count", -1) do
      delete sach_url(@sach)
    end

    assert_redirected_to saches_url
  end
end
