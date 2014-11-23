class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.integer :beer_type
      t.string :beer_name
      t.integer :num_consumed
      t.integer :star_rating
      t.string :notes
      t.string :fav_save
      t.integer :user_id

      t.timestamps

    end
  end
end
