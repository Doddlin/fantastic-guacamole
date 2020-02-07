require 'test_helper'

class PropownersControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get propowners_create_url
    assert_response :success
  end

  test "should get index" do
    get propowners_index_url
    assert_response :success
  end

  test "should get new" do
    get propowners_new_url
    assert_response :success
  end
end
