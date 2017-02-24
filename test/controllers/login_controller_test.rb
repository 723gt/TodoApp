require 'test_helper'

class LoginControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "hoge" do
    get :new
    assert_response :success
  end
end
