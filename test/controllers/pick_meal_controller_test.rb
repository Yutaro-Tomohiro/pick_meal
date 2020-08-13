require 'test_helper'

class PickMealControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pick_meal_index_url
    assert_response :success
  end

  test "should get show" do
    get pick_meal_show_url
    assert_response :success
  end

  test "should get new" do
    get pick_meal_new_url
    assert_response :success
  end

  test "should get create" do
    get pick_meal_create_url
    assert_response :success
  end

end
