class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.integer :exercise_category
      t.float :duration
      t.string :intensity
      t.string :favsave
      t.integer :user_id

      t.timestamps

    end
  end
end
