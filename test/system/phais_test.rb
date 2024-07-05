require "application_system_test_case"

class PhaisTest < ApplicationSystemTestCase
  setup do
    @phai = phais(:one)
  end

  test "visiting the index" do
    visit phais_url
    assert_selector "h1", text: "Phais"
  end

  test "should create phai" do
    visit phais_url
    click_on "New phai"

    fill_in "Tenphai", with: @phai.TenPhai
    click_on "Create Phai"

    assert_text "Phai was successfully created"
    click_on "Back"
  end

  test "should update Phai" do
    visit phai_url(@phai)
    click_on "Edit this phai", match: :first

    fill_in "Tenphai", with: @phai.TenPhai
    click_on "Update Phai"

    assert_text "Phai was successfully updated"
    click_on "Back"
  end

  test "should destroy Phai" do
    visit phai_url(@phai)
    click_on "Destroy this phai", match: :first

    assert_text "Phai was successfully destroyed"
  end
end
