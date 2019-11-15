require "application_system_test_case"

class ClansTest < ApplicationSystemTestCase
  setup do
    @clan = clans(:one)
  end

  test "visiting the index" do
    visit clans_url
    assert_selector "h1", text: "Clans"
  end

  test "creating a Clan" do
    visit clans_url
    click_on "New Clan"

    fill_in "Avatar", with: @clan.avatar
    fill_in "Link", with: @clan.link
    fill_in "Name", with: @clan.name
    click_on "Create Clan"

    assert_text "Clan was successfully created"
    click_on "Back"
  end

  test "updating a Clan" do
    visit clans_url
    click_on "Edit", match: :first

    fill_in "Avatar", with: @clan.avatar
    fill_in "Link", with: @clan.link
    fill_in "Name", with: @clan.name
    click_on "Update Clan"

    assert_text "Clan was successfully updated"
    click_on "Back"
  end

  test "destroying a Clan" do
    visit clans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Clan was successfully destroyed"
  end
end
