class Meal < ApplicationRecord
  enum main_dish:{
    meat: 0,
    fish: 1,
    vegetables: 2
  }

  enum carbs:{
    rice: 0,
    bread: 1,
    noodles: 2
  }

  scope :search, -> (meals_params) do
    main_dish_is(meals_params[:main_dish])
    .carb_is(meals_params[:carbs])
  end

  scope :main_dish_is, -> (main_dish) {where(main_dish: main_dish) if main_dish.present? }
  scope :carb_is, -> (carbs) {where(carbs: carbs) if carbs.present? }
  
end
