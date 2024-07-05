require "application_system_test_case"

class QuyensTest < ApplicationSystemTestCase
  setup do
    @quyen = quyens(:one)
  end

  test "visiting the index" do
    visit quyens_url
    assert_selector "h1", text: "Quyens"
  end

  test "should create quyen" do
    visit quyens_url
    click_on "New quyen"

    fill_in "Tenq", with: @quyen.TenQ
    click_on "Create Quyen"

    assert_text "Quyen was successfully created"
    click_on "Back"
  end

  test "should update Quyen" do
    visit quyen_url(@quyen)
    click_on "Edit this quyen", match: :first

    fill_in "Tenq", with: @quyen.TenQ
    click_on "Update Quyen"

    assert_text "Quyen was successfully updated"
    click_on "Back"
  end

  test "should destroy Quyen" do
    visit quyen_url(@quyen)
    click_on "Destroy this quyen", match: :first

    assert_text "Quyen was successfully destroyed"
  end
end
