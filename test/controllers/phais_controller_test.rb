require "test_helper"

class PhaisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @phai = phais(:one)
  end

  test "should get index" do
    get phais_url
    assert_response :success
  end

  test "should get new" do
    get new_phai_url
    assert_response :success
  end

  test "should create phai" do
    assert_difference("Phai.count") do
      post phais_url, params: { phai: { TenPhai: @phai.TenPhai } }
    end

    assert_redirected_to phai_url(Phai.last)
  end

  test "should show phai" do
    get phai_url(@phai)
    assert_response :success
  end

  test "should get edit" do
    get edit_phai_url(@phai)
    assert_response :success
  end

  test "should update phai" do
    patch phai_url(@phai), params: { phai: { TenPhai: @phai.TenPhai } }
    assert_redirected_to phai_url(@phai)
  end

  test "should destroy phai" do
    assert_difference("Phai.count", -1) do
      delete phai_url(@phai)
    end

    assert_redirected_to phais_url
  end
end
