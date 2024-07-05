require "application_system_test_case"

class GioHangsTest < ApplicationSystemTestCase
  setup do
    @gio_hang = gio_hangs(:one)
  end

  test "visiting the index" do
    visit gio_hangs_url
    assert_selector "h1", text: "Gio hangs"
  end

  test "should create gio hang" do
    visit gio_hangs_url
    click_on "New gio hang"

    fill_in "Anhminhhoa", with: @gio_hang.AnhminhHoa
    fill_in "Gia", with: @gio_hang.Gia
    fill_in "Tensp", with: @gio_hang.TenSP
    fill_in "Danh muc", with: @gio_hang.danh_muc_id
    fill_in "Nguoidung", with: @gio_hang.nguoidung_id
    fill_in "San pham", with: @gio_hang.san_pham_id
    fill_in "Soluong", with: @gio_hang.soluong
    fill_in "Thanhtien", with: @gio_hang.thanhtien
    click_on "Create Gio hang"

    assert_text "Gio hang was successfully created"
    click_on "Back"
  end

  test "should update Gio hang" do
    visit gio_hang_url(@gio_hang)
    click_on "Edit this gio hang", match: :first

    fill_in "Anhminhhoa", with: @gio_hang.AnhminhHoa
    fill_in "Gia", with: @gio_hang.Gia
    fill_in "Tensp", with: @gio_hang.TenSP
    fill_in "Danh muc", with: @gio_hang.danh_muc_id
    fill_in "Nguoidung", with: @gio_hang.nguoidung_id
    fill_in "San pham", with: @gio_hang.san_pham_id
    fill_in "Soluong", with: @gio_hang.soluong
    fill_in "Thanhtien", with: @gio_hang.thanhtien
    click_on "Update Gio hang"

    assert_text "Gio hang was successfully updated"
    click_on "Back"
  end

  test "should destroy Gio hang" do
    visit gio_hang_url(@gio_hang)
    click_on "Destroy this gio hang", match: :first

    assert_text "Gio hang was successfully destroyed"
  end
end
