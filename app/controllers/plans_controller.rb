class PlansController < ApplicationController
  before_action :set_plan, only: [:show, :edit, :update, :destroy]


  # GET /plans
  # GET /plans.json

  def index
    @foods = Food.select(:cuisine).distinct
  end

  def listing
    @plans = Plan.all
    @foods_b = Food.where(cuisine: params[:foods][:bf_id])
       @foods_l = Food.where(cuisine: params[:foods][:lch_id])
          @foods_d = Food.where(cuisine: params[:foods][:din_id])

  end

  def profile
    @plans = Plan.all
    @foods = Food.all
  end

  # GET /plans/1
  # GET /plans/1.json
  def show
    @plans = Plan.find(params[:id])
    @foods = Food.all
  end

  # GET /plans/new
  def new
    @plan = Plan.new
    @foods = Food.all
  end

  # GET /plans/1/edit
  def edit
    @plans = Plan.find(params[:id])
    @foods = Food.all
  end

  # POST /plans
  # POST /plans.json
  def create
    @plan = Plan.new(plan_params)

    respond_to do |format|
      if @plan.save
        format.html { redirect_to @plan, notice: 'Plan was successfully created.' }
        format.json { render :show, status: :created, location: @plan }
      else
        format.html { render :new }
        format.json { render json: @plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plans/1
  # PATCH/PUT /plans/1.json
  def update
    respond_to do |format|
      if @plan.update(plan_params)
        format.html { redirect_to @plan, notice: 'Plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @plan }
      else
        format.html { render :edit }
        format.json { render json: @plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plans/1
  # DELETE /plans/1.json
  def destroy
    @plan = Plan.find(params[:id])
    @plan.destroy
    respond_to do |format|
      format.html { redirect_to profile_url, notice: 'Plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plan
      @plan = Plan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plan_params
      params.require(:plan).permit(:date, :breakfast_id, :lunch_id, :dinner_id, :food_id)
    end
end