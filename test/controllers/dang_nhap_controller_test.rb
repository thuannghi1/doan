require "test_helper"

class DangNhapControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dang_nhap_index_url
    assert_response :success
  end
end
