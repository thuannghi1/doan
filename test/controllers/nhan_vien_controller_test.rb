require "test_helper"

class NhanVienControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get nhan_vien_index_url
    assert_response :success
  end
end
