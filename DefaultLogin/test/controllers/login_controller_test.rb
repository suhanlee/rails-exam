require 'test_helper'

class LoginControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get try" do
    get :try
    assert_response :success
  end

end
