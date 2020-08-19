class MealsController < ApplicationController
  def index
    @meals_params = meals_search_params
    @meals_name = Meal.search(@meals_params)
  end
  
  def show
  end
  
  def new
    @meal = Meal.new
  end
  
  def create
    meal = Meal.new(meal_reg_params)
    meal.save!
    redirect_to new_meal_path, notice: "「#{meal.meal_name}」を登録しました！"
  end
  
  private
  
  def meal_reg_params
    params.require(:meal).permit(:meal_name, :main_dish, :carbs)
  end

  def meals_search_params
    params.fetch(:search, {}).permit(:main_dish, :carbs)
  end

end
