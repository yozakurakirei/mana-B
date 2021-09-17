require "test_helper"

class ManaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mana_index_url
    assert_response :success
  end

  test "should get show" do
    get mana_show_url
    assert_response :success
  end
end
