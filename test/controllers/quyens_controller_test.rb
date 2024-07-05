require "test_helper"

class QuyensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quyen = quyens(:one)
  end

  test "should get index" do
    get quyens_url
    assert_response :success
  end

  test "should get new" do
    get new_quyen_url
    assert_response :success
  end

  test "should create quyen" do
    assert_difference("Quyen.count") do
      post quyens_url, params: { quyen: { TenQ: @quyen.TenQ } }
    end

    assert_redirected_to quyen_url(Quyen.last)
  end

  test "should show quyen" do
    get quyen_url(@quyen)
    assert_response :success
  end

  test "should get edit" do
    get edit_quyen_url(@quyen)
    assert_response :success
  end

  test "should update quyen" do
    patch quyen_url(@quyen), params: { quyen: { TenQ: @quyen.TenQ } }
    assert_redirected_to quyen_url(@quyen)
  end

  test "should destroy quyen" do
    assert_difference("Quyen.count", -1) do
      delete quyen_url(@quyen)
    end

    assert_redirected_to quyens_url
  end
end
