class ChangeIntegersToFloats < ActiveRecord::Migration
  def change
    change_column :beers, :num_consumed, :float
    change_column :beers, :calorie, :float
    change_column :exercises, :calorie, :float
  end
end
