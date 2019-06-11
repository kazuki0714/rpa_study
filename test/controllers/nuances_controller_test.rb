require 'test_helper'

class NuancesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get nuances_index_url
    assert_response :success
  end

end
