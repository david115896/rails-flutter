require 'test_helper'

class TripactivitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tripactivity = tripactivities(:one)
  end

  test "should get index" do
    get tripactivities_url
    assert_response :success
  end

  test "should get new" do
    get new_tripactivity_url
    assert_response :success
  end

  test "should create tripactivity" do
    assert_difference('Tripactivity.count') do
      post tripactivities_url, params: { tripactivity: {  } }
    end

    assert_redirected_to tripactivity_url(Tripactivity.last)
  end

  test "should show tripactivity" do
    get tripactivity_url(@tripactivity)
    assert_response :success
  end

  test "should get edit" do
    get edit_tripactivity_url(@tripactivity)
    assert_response :success
  end

  test "should update tripactivity" do
    patch tripactivity_url(@tripactivity), params: { tripactivity: {  } }
    assert_redirected_to tripactivity_url(@tripactivity)
  end

  test "should destroy tripactivity" do
    assert_difference('Tripactivity.count', -1) do
      delete tripactivity_url(@tripactivity)
    end

    assert_redirected_to tripactivities_url
  end
end
