require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get signin," do
    get :signin,
    assert_response :success
  end

  test "should get signup" do
    get :signup
    assert_response :success
  end

end
