require 'test_helper'

class ReactTestControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get react_test_index_url
    assert_response :success
  end

end
