require "application_system_test_case"

class BlogAppsTest < ApplicationSystemTestCase
  setup do
    @blog_app = blog_apps(:one)
  end

  test "visiting the index" do
    visit blog_apps_url
    assert_selector "h1", text: "Blog apps"
  end

  test "should create blog app" do
    visit blog_apps_url
    click_on "New blog app"

    fill_in "About", with: @blog_app.about
    fill_in "Name", with: @blog_app.name
    fill_in "Title", with: @blog_app.title
    click_on "Create Blog app"

    assert_text "Blog app was successfully created"
    click_on "Back"
  end

  test "should update Blog app" do
    visit blog_app_url(@blog_app)
    click_on "Edit this blog app", match: :first

    fill_in "About", with: @blog_app.about
    fill_in "Name", with: @blog_app.name
    fill_in "Title", with: @blog_app.title
    click_on "Update Blog app"

    assert_text "Blog app was successfully updated"
    click_on "Back"
  end

  test "should destroy Blog app" do
    visit blog_app_url(@blog_app)
    click_on "Destroy this blog app", match: :first

    assert_text "Blog app was successfully destroyed"
  end
end
