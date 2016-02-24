require 'test_helper'

class LawyersControllerTest < ActionController::TestCase
  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get edir" do
    get :edir
    assert_response :success
  end

  test "should get delete" do
    get :delete
    assert_response :success
  end

end
