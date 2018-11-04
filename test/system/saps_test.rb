require "application_system_test_case"

class SapsTest < ApplicationSystemTestCase
  setup do
    @sap = saps(:one)
  end

  test "visiting the index" do
    visit saps_url
    assert_selector "h1", text: "Saps"
  end

  test "creating a Sap" do
    visit saps_url
    click_on "New Sap"

    click_on "Create Sap"

    assert_text "Sap was successfully created"
    click_on "Back"
  end

  test "updating a Sap" do
    visit saps_url
    click_on "Edit", match: :first

    click_on "Update Sap"

    assert_text "Sap was successfully updated"
    click_on "Back"
  end

  test "destroying a Sap" do
    visit saps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sap was successfully destroyed"
  end
end
