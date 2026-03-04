require "test_helper"

class ChannelSubscribesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get channel_subscribes_index_url
    assert_response :success
  end

  test "should get show" do
    get channel_subscribes_show_url
    assert_response :success
  end

  test "should get new" do
    get channel_subscribes_new_url
    assert_response :success
  end

  test "should get create" do
    get channel_subscribes_create_url
    assert_response :success
  end

  test "should get destroy" do
    get channel_subscribes_destroy_url
    assert_response :success
  end
end
