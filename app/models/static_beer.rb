class StaticBeer < ActiveRecord::Base
    has_many(:beers, {:class_name => "Beer", :foreign_key => "beer_type"})

  validates( :beer_cat_name, :presence => true, :uniqueness => true)
  validates( :calpertype, :presence => true)

end
