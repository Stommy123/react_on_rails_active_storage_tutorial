require "application_system_test_case"

class ThingWithReactFormsTest < ApplicationSystemTestCase
  setup do
    @thing_with_react_form = thing_with_react_forms(:one)
  end

  test "visiting the index" do
    visit thing_with_react_forms_url
    assert_selector "h1", text: "Thing With React Forms"
  end

  test "creating a Thing with react form" do
    visit thing_with_react_forms_url
    click_on "New Thing With React Form"

    fill_in "Name", with: @thing_with_react_form.name
    click_on "Create Thing with react form"

    assert_text "Thing with react form was successfully created"
    click_on "Back"
  end

  test "updating a Thing with react form" do
    visit thing_with_react_forms_url
    click_on "Edit", match: :first

    fill_in "Name", with: @thing_with_react_form.name
    click_on "Update Thing with react form"

    assert_text "Thing with react form was successfully updated"
    click_on "Back"
  end

  test "destroying a Thing with react form" do
    visit thing_with_react_forms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Thing with react form was successfully destroyed"
  end
end
