require 'test_helper'

class LegsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get legs_new_url
    assert_response :success
  end

  test "should get create" do
    get legs_create_url
    assert_response :success
  end

end
