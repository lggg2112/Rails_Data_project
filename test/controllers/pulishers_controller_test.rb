require 'test_helper'

class PulishersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pulishers_index_url
    assert_response :success
  end

  test "should get show" do
    get pulishers_show_url
    assert_response :success
  end

end
