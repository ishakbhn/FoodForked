require "application_system_test_case"

class FoodMealsTest < ApplicationSystemTestCase
  setup do
    @food_meal = food_meals(:one)
  end

  test "visiting the index" do
    visit food_meals_url
    assert_selector "h1", text: "Food Meals"
  end

  test "creating a Food meal" do
    visit food_meals_url
    click_on "New Food Meal"

    fill_in "Meal", with: @food_meal.meal_id
    click_on "Create Food meal"

    assert_text "Food meal was successfully created"
    click_on "Back"
  end

  test "updating a Food meal" do
    visit food_meals_url
    click_on "Edit", match: :first

    fill_in "Meal", with: @food_meal.meal_id
    click_on "Update Food meal"

    assert_text "Food meal was successfully updated"
    click_on "Back"
  end

  test "destroying a Food meal" do
    visit food_meals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Food meal was successfully destroyed"
  end
end
