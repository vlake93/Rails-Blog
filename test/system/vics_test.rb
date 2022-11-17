require "application_system_test_case"

class VicsTest < ApplicationSystemTestCase
  setup do
    @vic = vics(:one)
  end

  test "visiting the index" do
    visit vics_url
    assert_selector "h1", text: "Vics"
  end

  test "should create vic" do
    visit vics_url
    click_on "New vic"

    fill_in "About", with: @vic.about
    fill_in "Name", with: @vic.name
    fill_in "Title", with: @vic.title
    click_on "Create Vic"

    assert_text "Vic was successfully created"
    click_on "Back"
  end

  test "should update Vic" do
    visit vic_url(@vic)
    click_on "Edit this vic", match: :first

    fill_in "About", with: @vic.about
    fill_in "Name", with: @vic.name
    fill_in "Title", with: @vic.title
    click_on "Update Vic"

    assert_text "Vic was successfully updated"
    click_on "Back"
  end

  test "should destroy Vic" do
    visit vic_url(@vic)
    click_on "Destroy this vic", match: :first

    assert_text "Vic was successfully destroyed"
  end
end
