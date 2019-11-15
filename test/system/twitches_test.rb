require "application_system_test_case"

class TwitchesTest < ApplicationSystemTestCase
  setup do
    @twitch = twitches(:one)
  end

  test "visiting the index" do
    visit twitches_url
    assert_selector "h1", text: "Twitches"
  end

  test "creating a Twitch" do
    visit twitches_url
    click_on "New Twitch"

    fill_in "Owner", with: @twitch.owner
    fill_in "Url", with: @twitch.url
    click_on "Create Twitch"

    assert_text "Twitch was successfully created"
    click_on "Back"
  end

  test "updating a Twitch" do
    visit twitches_url
    click_on "Edit", match: :first

    fill_in "Owner", with: @twitch.owner
    fill_in "Url", with: @twitch.url
    click_on "Update Twitch"

    assert_text "Twitch was successfully updated"
    click_on "Back"
  end

  test "destroying a Twitch" do
    visit twitches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Twitch was successfully destroyed"
  end
end
