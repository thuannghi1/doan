require "test_helper"

class KichThuocsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kich_thuoc = kich_thuocs(:one)
  end

  test "should get index" do
    get kich_thuocs_url
    assert_response :success
  end

  test "should get new" do
    get new_kich_thuoc_url
    assert_response :success
  end

  test "should create kich_thuoc" do
    assert_difference("KichThuoc.count") do
      post kich_thuocs_url, params: { kich_thuoc: { Size: @kich_thuoc.Size } }
    end

    assert_redirected_to kich_thuoc_url(KichThuoc.last)
  end

  test "should show kich_thuoc" do
    get kich_thuoc_url(@kich_thuoc)
    assert_response :success
  end

  test "should get edit" do
    get edit_kich_thuoc_url(@kich_thuoc)
    assert_response :success
  end

  test "should update kich_thuoc" do
    patch kich_thuoc_url(@kich_thuoc), params: { kich_thuoc: { Size: @kich_thuoc.Size } }
    assert_redirected_to kich_thuoc_url(@kich_thuoc)
  end

  test "should destroy kich_thuoc" do
    assert_difference("KichThuoc.count", -1) do
      delete kich_thuoc_url(@kich_thuoc)
    end

    assert_redirected_to kich_thuocs_url
  end
end
