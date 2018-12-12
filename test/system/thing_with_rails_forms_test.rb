require "application_system_test_case"

class ThingWithRailsFormsTest < ApplicationSystemTestCase
  setup do
    @thing_with_rails_form = thing_with_rails_forms(:one)
  end

  test "visiting the index" do
    visit thing_with_rails_forms_url
    assert_selector "h1", text: "Thing With Rails Forms"
  end

  test "creating a Thing with rails form" do
    visit thing_with_rails_forms_url
    click_on "New Thing With Rails Form"

    fill_in "Name", with: @thing_with_rails_form.name
    click_on "Create Thing with rails form"

    assert_text "Thing with rails form was successfully created"
    click_on "Back"
  end

  test "updating a Thing with rails form" do
    visit thing_with_rails_forms_url
    click_on "Edit", match: :first

    fill_in "Name", with: @thing_with_rails_form.name
    click_on "Update Thing with rails form"

    assert_text "Thing with rails form was successfully updated"
    click_on "Back"
  end

  test "destroying a Thing with rails form" do
    visit thing_with_rails_forms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Thing with rails form was successfully destroyed"
  end
end
