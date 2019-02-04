class FoodMealsController < ApplicationController
  before_action :set_food_meal, only: [:show, :edit, :update, :destroy]

  # GET /food_meals
  # GET /food_meals.json
  def index
    @food_meals = FoodMeal.all
  end

  # GET /food_meals/1
  # GET /food_meals/1.json
  def show
  end

  # GET /food_meals/new
  def new
    @food_meal = FoodMeal.new
  end

  # GET /food_meals/1/edit
  def edit
  end

  # POST /food_meals
  # POST /food_meals.json
  def create
    @food_meal = FoodMeal.new(food_meal_params)

    respond_to do |format|
      if @food_meal.save
        format.html { redirect_to @food_meal, notice: 'Food meal was successfully created.' }
        format.json { render :show, status: :created, location: @food_meal }
      else
        format.html { render :new }
        format.json { render json: @food_meal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /food_meals/1
  # PATCH/PUT /food_meals/1.json
  def update
    respond_to do |format|
      if @food_meal.update(food_meal_params)
        format.html { redirect_to @food_meal, notice: 'Food meal was successfully updated.' }
        format.json { render :show, status: :ok, location: @food_meal }
      else
        format.html { render :edit }
        format.json { render json: @food_meal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /food_meals/1
  # DELETE /food_meals/1.json
  def destroy
    @food_meal.destroy
    respond_to do |format|
      format.html { redirect_to food_meals_url, notice: 'Food meal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food_meal
      @food_meal = FoodMeal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def food_meal_params
      params.require(:food_meal).permit(:meal_id, :breakfast_id, :lunch_id, :dinner_id)
    end
end
