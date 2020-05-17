require 'test_helper'

class ThemelistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @themelist = themelists(:one)
  end

  test "should get index" do
    get themelists_url
    assert_response :success
  end

  test "should get new" do
    get new_themelist_url
    assert_response :success
  end

  test "should create themelist" do
    assert_difference('Themelist.count') do
      post themelists_url, params: { themelist: {  } }
    end

    assert_redirected_to themelist_url(Themelist.last)
  end

  test "should show themelist" do
    get themelist_url(@themelist)
    assert_response :success
  end

  test "should get edit" do
    get edit_themelist_url(@themelist)
    assert_response :success
  end

  test "should update themelist" do
    patch themelist_url(@themelist), params: { themelist: {  } }
    assert_redirected_to themelist_url(@themelist)
  end

  test "should destroy themelist" do
    assert_difference('Themelist.count', -1) do
      delete themelist_url(@themelist)
    end

    assert_redirected_to themelists_url
  end
end
