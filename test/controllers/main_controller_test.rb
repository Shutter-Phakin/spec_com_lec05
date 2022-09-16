require "test_helper"

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get test" do
    get main_test_url
    assert_response :success
  end

  test "should get test_re" do
    get main_test_re_url
    assert_response :success
  end

  test "should get first_page" do
    get main_first_page_url
    assert_response :success
  end
end
