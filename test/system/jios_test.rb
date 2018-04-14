require "application_system_test_case"

class JiosTest < ApplicationSystemTestCase
  setup do
    @jio = jios(:one)
  end

  test "visiting the index" do
    visit jios_url
    assert_selector "h1", text: "Jios"
  end

  test "creating a Jio" do
    visit jios_url
    click_on "New Jio"

    fill_in "Contact Number", with: @jio.contact_number
    fill_in "Name", with: @jio.name
    click_on "Create Jio"

    assert_text "Jio was successfully created"
    click_on "Back"
  end

  test "updating a Jio" do
    visit jios_url
    click_on "Edit", match: :first

    fill_in "Contact Number", with: @jio.contact_number
    fill_in "Name", with: @jio.name
    click_on "Update Jio"

    assert_text "Jio was successfully updated"
    click_on "Back"
  end

  test "destroying a Jio" do
    visit jios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Jio was successfully destroyed"
  end
end
