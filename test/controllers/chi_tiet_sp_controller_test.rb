require "test_helper"

class ChiTietSpControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get chi_tiet_sp_index_url
    assert_response :success
  end
end
