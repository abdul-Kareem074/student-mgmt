require "test_helper"

class VideoChannelsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get video_channels_index_url
    assert_response :success
  end

  test "should get show" do
    get video_channels_show_url
    assert_response :success
  end

  test "should get new" do
    get video_channels_new_url
    assert_response :success
  end

  test "should get edit" do
    get video_channels_edit_url
    assert_response :success
  end

  test "should get create" do
    get video_channels_create_url
    assert_response :success
  end

  test "should get update" do
    get video_channels_update_url
    assert_response :success
  end

  test "should get destroy" do
    get video_channels_destroy_url
    assert_response :success
  end
end
