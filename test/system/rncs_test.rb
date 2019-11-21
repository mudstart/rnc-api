require "application_system_test_case"

class RncsTest < ApplicationSystemTestCase
  setup do
    @rnc = rncs(:one)
  end

  test "visiting the index" do
    visit rncs_url
    assert_selector "h1", text: "Rncs"
  end

  test "creating a Rnc" do
    visit rncs_url
    click_on "New Rnc"

    fill_in "Nombre", with: @rnc.nombre
    click_on "Create Rnc"

    assert_text "Rnc was successfully created"
    click_on "Back"
  end

  test "updating a Rnc" do
    visit rncs_url
    click_on "Edit", match: :first

    fill_in "Nombre", with: @rnc.nombre
    click_on "Update Rnc"

    assert_text "Rnc was successfully updated"
    click_on "Back"
  end

  test "destroying a Rnc" do
    visit rncs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rnc was successfully destroyed"
  end
end
