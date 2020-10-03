require 'test_helper'

class UpdloadsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get updloads_new_url
    assert_response :success
  end

end
