class CreateStaticExercises < ActiveRecord::Migration
  def change
    create_table :static_exercises do |t|
      t.string :exercise_category
      t.float :calpermin_low
      t.float :calpermin_med
      t.float :calpermin_high

      t.timestamps

    end
  end
end
