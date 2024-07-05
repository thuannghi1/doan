require "application_system_test_case"

class SanPhamsTest < ApplicationSystemTestCase
  setup do
    @san_pham = san_phams(:one)
  end

  test "visiting the index" do
    visit san_phams_url
    assert_selector "h1", text: "San phams"
  end

  test "should create san pham" do
    visit san_phams_url
    click_on "New san pham"

    fill_in "Anhminhhoa", with: @san_pham.AnhMinhHoa
    fill_in "Gia", with: @san_pham.Gia
    fill_in "Mota", with: @san_pham.MoTa
    fill_in "Tensp", with: @san_pham.TenSP
    fill_in "Danh muc", with: @san_pham.danh_muc_id
    fill_in "Kich thuoc", with: @san_pham.kich_thuoc_id
    click_on "Create San pham"

    assert_text "San pham was successfully created"
    click_on "Back"
  end

  test "should update San pham" do
    visit san_pham_url(@san_pham)
    click_on "Edit this san pham", match: :first

    fill_in "Anhminhhoa", with: @san_pham.AnhMinhHoa
    fill_in "Gia", with: @san_pham.Gia
    fill_in "Mota", with: @san_pham.MoTa
    fill_in "Tensp", with: @san_pham.TenSP
    fill_in "Danh muc", with: @san_pham.danh_muc_id
    fill_in "Kich thuoc", with: @san_pham.kich_thuoc_id
    click_on "Update San pham"

    assert_text "San pham was successfully updated"
    click_on "Back"
  end

  test "should destroy San pham" do
    visit san_pham_url(@san_pham)
    click_on "Destroy this san pham", match: :first

    assert_text "San pham was successfully destroyed"
  end
end
