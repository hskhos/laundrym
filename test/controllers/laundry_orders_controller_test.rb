require "test_helper"

class LaundryOrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get laundry_orders_index_url
    assert_response :success
  end
end
