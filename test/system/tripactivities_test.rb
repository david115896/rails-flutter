require "application_system_test_case"

class TripactivitiesTest < ApplicationSystemTestCase
  setup do
    @tripactivity = tripactivities(:one)
  end

  test "visiting the index" do
    visit tripactivities_url
    assert_selector "h1", text: "Tripactivities"
  end

  test "creating a Tripactivity" do
    visit tripactivities_url
    click_on "New Tripactivity"

    click_on "Create Tripactivity"

    assert_text "Tripactivity was successfully created"
    click_on "Back"
  end

  test "updating a Tripactivity" do
    visit tripactivities_url
    click_on "Edit", match: :first

    click_on "Update Tripactivity"

    assert_text "Tripactivity was successfully updated"
    click_on "Back"
  end

  test "destroying a Tripactivity" do
    visit tripactivities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tripactivity was successfully destroyed"
  end
end
