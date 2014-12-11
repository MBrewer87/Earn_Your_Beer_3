class AddCalorieToExercises < ActiveRecord::Migration
  def change
    add_column :exercises, :calorie, :float
  end
end
