require 'test_helper'

class RegistrarControllerTest < ActionController::TestCase
  test "should get usuarios" do
    get :usuarios
    assert_response :success
  end

end
