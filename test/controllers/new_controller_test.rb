require 'test_helper'

class NewControllerTest < ActionDispatch::IntegrationTest
  test "should get created" do
    get new_created_url
    assert_response :success
  end

  test "should get destroy" do
    get new_destroy_url
    assert_response :success
  end

end
