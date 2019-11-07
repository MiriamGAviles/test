require 'test_helper'

class DetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get details" do
    get details_details_url
    assert_response :success
  end

end
