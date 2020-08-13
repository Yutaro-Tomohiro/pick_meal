class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.string :meal_name
      t.integer :main_dish
      t.integer :carbs

      t.timestamps
    end
  end
end
