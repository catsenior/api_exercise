require "test_helper"

class Api::V1::TrainsControllerTest < ActionDispatch::IntegrationTest
  test "should get –no-assets" do
    get api_v1_trains_–no-assets_url
    assert_response :success
  end
end
