require 'test_helper'

class LoginControllerTest < ActionController::TestCase
  test "should get logueo" do
    get :logueo
    assert_response :success
  end

end
