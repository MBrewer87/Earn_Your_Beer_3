class CreateStaticBeers < ActiveRecord::Migration
  def change
    create_table :static_beers do |t|
      t.string :beer_category
      t.float :calpertype

      t.timestamps

    end
  end
end
