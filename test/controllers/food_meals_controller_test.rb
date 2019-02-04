require 'test_helper'

class FoodMealsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @food_meal = food_meals(:one)
  end

  test "should get index" do
    get food_meals_url
    assert_response :success
  end

  test "should get new" do
    get new_food_meal_url
    assert_response :success
  end

  test "should create food_meal" do
    assert_difference('FoodMeal.count') do
      post food_meals_url, params: { food_meal: { meal_id: @food_meal.meal_id } }
    end

    assert_redirected_to food_meal_url(FoodMeal.last)
  end

  test "should show food_meal" do
    get food_meal_url(@food_meal)
    assert_response :success
  end

  test "should get edit" do
    get edit_food_meal_url(@food_meal)
    assert_response :success
  end

  test "should update food_meal" do
    patch food_meal_url(@food_meal), params: { food_meal: { meal_id: @food_meal.meal_id } }
    assert_redirected_to food_meal_url(@food_meal)
  end

  test "should destroy food_meal" do
    assert_difference('FoodMeal.count', -1) do
      delete food_meal_url(@food_meal)
    end

    assert_redirected_to food_meals_url
  end
end
