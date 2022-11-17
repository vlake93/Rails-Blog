require "test_helper"

class VicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vic = vics(:one)
  end

  test "should get index" do
    get vics_url
    assert_response :success
  end

  test "should get new" do
    get new_vic_url
    assert_response :success
  end

  test "should create vic" do
    assert_difference("Vic.count") do
      post vics_url, params: { vic: { about: @vic.about, name: @vic.name, title: @vic.title } }
    end

    assert_redirected_to vic_url(Vic.last)
  end

  test "should show vic" do
    get vic_url(@vic)
    assert_response :success
  end

  test "should get edit" do
    get edit_vic_url(@vic)
    assert_response :success
  end

  test "should update vic" do
    patch vic_url(@vic), params: { vic: { about: @vic.about, name: @vic.name, title: @vic.title } }
    assert_redirected_to vic_url(@vic)
  end

  test "should destroy vic" do
    assert_difference("Vic.count", -1) do
      delete vic_url(@vic)
    end

    assert_redirected_to vics_url
  end
end
