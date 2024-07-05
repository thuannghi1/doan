require "test_helper"

class DangKyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dang_ky_index_url
    assert_response :success
  end
end
