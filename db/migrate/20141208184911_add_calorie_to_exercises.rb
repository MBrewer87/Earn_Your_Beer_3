class AddCalorieToExercises < ActiveRecord::Migration
  def change
    add_column :exercises, :calorie, :integer
  end
end
