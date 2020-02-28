require 'test_helper'

class HeroinePowerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get heroine_power_index_url
    assert_response :success
  end

  test "should get new" do
    get heroine_power_new_url
    assert_response :success
  end

  test "should get show" do
    get heroine_power_show_url
    assert_response :success
  end

  test "should get create" do
    get heroine_power_create_url
    assert_response :success
  end

end
