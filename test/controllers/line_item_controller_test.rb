require "test_helper"

class LineItemControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get line_item_new_url
    assert_response :success
  end
end
