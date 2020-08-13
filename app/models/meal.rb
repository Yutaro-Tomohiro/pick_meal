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
end
