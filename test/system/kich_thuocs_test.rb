require "application_system_test_case"

class KichThuocsTest < ApplicationSystemTestCase
  setup do
    @kich_thuoc = kich_thuocs(:one)
  end

  test "visiting the index" do
    visit kich_thuocs_url
    assert_selector "h1", text: "Kich thuocs"
  end

  test "should create kich thuoc" do
    visit kich_thuocs_url
    click_on "New kich thuoc"

    fill_in "Size", with: @kich_thuoc.Size
    click_on "Create Kich thuoc"

    assert_text "Kich thuoc was successfully created"
    click_on "Back"
  end

  test "should update Kich thuoc" do
    visit kich_thuoc_url(@kich_thuoc)
    click_on "Edit this kich thuoc", match: :first

    fill_in "Size", with: @kich_thuoc.Size
    click_on "Update Kich thuoc"

    assert_text "Kich thuoc was successfully updated"
    click_on "Back"
  end

  test "should destroy Kich thuoc" do
    visit kich_thuoc_url(@kich_thuoc)
    click_on "Destroy this kich thuoc", match: :first

    assert_text "Kich thuoc was successfully destroyed"
  end
end
