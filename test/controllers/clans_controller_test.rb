require 'test_helper'

class ClansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clan = clans(:one)
  end

  test "should get index" do
    get clans_url
    assert_response :success
  end

  test "should get new" do
    get new_clan_url
    assert_response :success
  end

  test "should create clan" do
    assert_difference('Clan.count') do
      post clans_url, params: { clan: { avatar: @clan.avatar, link: @clan.link, name: @clan.name } }
    end

    assert_redirected_to clan_url(Clan.last)
  end

  test "should show clan" do
    get clan_url(@clan)
    assert_response :success
  end

  test "should get edit" do
    get edit_clan_url(@clan)
    assert_response :success
  end

  test "should update clan" do
    patch clan_url(@clan), params: { clan: { avatar: @clan.avatar, link: @clan.link, name: @clan.name } }
    assert_redirected_to clan_url(@clan)
  end

  test "should destroy clan" do
    assert_difference('Clan.count', -1) do
      delete clan_url(@clan)
    end

    assert_redirected_to clans_url
  end
end
