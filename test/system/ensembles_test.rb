require "application_system_test_case"

class EnsemblesTest < ApplicationSystemTestCase
  setup do
    @ensemble = ensembles(:one)
  end

  test "visiting the index" do
    visit ensembles_url
    assert_selector "h1", text: "Ensembles"
  end

  test "creating a Ensemble" do
    visit ensembles_url
    click_on "New Ensemble"

    fill_in "Name", with: @ensemble.name
    click_on "Create Ensemble"

    assert_text "Ensemble was successfully created"
    click_on "Back"
  end

  test "updating a Ensemble" do
    visit ensembles_url
    click_on "Edit", match: :first

    fill_in "Name", with: @ensemble.name
    click_on "Update Ensemble"

    assert_text "Ensemble was successfully updated"
    click_on "Back"
  end

  test "destroying a Ensemble" do
    visit ensembles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ensemble was successfully destroyed"
  end
end
