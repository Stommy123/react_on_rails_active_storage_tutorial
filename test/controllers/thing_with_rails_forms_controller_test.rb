require 'test_helper'

class ThingWithRailsFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @thing_with_rails_form = thing_with_rails_forms(:one)
  end

  test "should get index" do
    get thing_with_rails_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_thing_with_rails_form_url
    assert_response :success
  end

  test "should create thing_with_rails_form" do
    assert_difference('ThingWithRailsForm.count') do
      post thing_with_rails_forms_url, params: { thing_with_rails_form: { name: @thing_with_rails_form.name } }
    end

    assert_redirected_to thing_with_rails_form_url(ThingWithRailsForm.last)
  end

  test "should show thing_with_rails_form" do
    get thing_with_rails_form_url(@thing_with_rails_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_thing_with_rails_form_url(@thing_with_rails_form)
    assert_response :success
  end

  test "should update thing_with_rails_form" do
    patch thing_with_rails_form_url(@thing_with_rails_form), params: { thing_with_rails_form: { name: @thing_with_rails_form.name } }
    assert_redirected_to thing_with_rails_form_url(@thing_with_rails_form)
  end

  test "should destroy thing_with_rails_form" do
    assert_difference('ThingWithRailsForm.count', -1) do
      delete thing_with_rails_form_url(@thing_with_rails_form)
    end

    assert_redirected_to thing_with_rails_forms_url
  end
end
