require 'test_helper'

class TwitchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @twitch = twitches(:one)
  end

  test "should get index" do
    get twitches_url
    assert_response :success
  end

  test "should get new" do
    get new_twitch_url
    assert_response :success
  end

  test "should create twitch" do
    assert_difference('Twitch.count') do
      post twitches_url, params: { twitch: { owner: @twitch.owner, url: @twitch.url } }
    end

    assert_redirected_to twitch_url(Twitch.last)
  end

  test "should show twitch" do
    get twitch_url(@twitch)
    assert_response :success
  end

  test "should get edit" do
    get edit_twitch_url(@twitch)
    assert_response :success
  end

  test "should update twitch" do
    patch twitch_url(@twitch), params: { twitch: { owner: @twitch.owner, url: @twitch.url } }
    assert_redirected_to twitch_url(@twitch)
  end

  test "should destroy twitch" do
    assert_difference('Twitch.count', -1) do
      delete twitch_url(@twitch)
    end

    assert_redirected_to twitches_url
  end
end
