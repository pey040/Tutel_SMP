require "application_system_test_case"

class OriginsTest < ApplicationSystemTestCase
  setup do
    @origin = origins(:one)
  end

  test "visiting the index" do
    visit origins_url
    assert_selector "h1", text: "Origins"
  end

  test "should create origin" do
    visit origins_url
    click_on "New origin"

    fill_in "Description", with: @origin.description
    fill_in "Image", with: @origin.image
    fill_in "Name", with: @origin.name
    fill_in "User", with: @origin.user_id
    click_on "Create Origin"

    assert_text "Origin was successfully created"
    click_on "Back"
  end

  test "should update Origin" do
    visit origin_url(@origin)
    click_on "Edit this origin", match: :first

    fill_in "Description", with: @origin.description
    fill_in "Image", with: @origin.image
    fill_in "Name", with: @origin.name
    fill_in "User", with: @origin.user_id
    click_on "Update Origin"

    assert_text "Origin was successfully updated"
    click_on "Back"
  end

  test "should destroy Origin" do
    visit origin_url(@origin)
    click_on "Destroy this origin", match: :first

    assert_text "Origin was successfully destroyed"
  end
end
