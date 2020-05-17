require "application_system_test_case"

class ThemelistsTest < ApplicationSystemTestCase
  setup do
    @themelist = themelists(:one)
  end

  test "visiting the index" do
    visit themelists_url
    assert_selector "h1", text: "Themelists"
  end

  test "creating a Themelist" do
    visit themelists_url
    click_on "New Themelist"

    click_on "Create Themelist"

    assert_text "Themelist was successfully created"
    click_on "Back"
  end

  test "updating a Themelist" do
    visit themelists_url
    click_on "Edit", match: :first

    click_on "Update Themelist"

    assert_text "Themelist was successfully updated"
    click_on "Back"
  end

  test "destroying a Themelist" do
    visit themelists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Themelist was successfully destroyed"
  end
end
