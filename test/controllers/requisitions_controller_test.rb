require 'test_helper'

class RequisitionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get requisitions_index_url
    assert_response :success
  end

end
