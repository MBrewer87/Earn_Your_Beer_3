class AddCalorieToBeers < ActiveRecord::Migration
  def change
    add_column :beers, :calorie, :integer
  end
end
