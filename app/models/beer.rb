class Beer < ActiveRecord::Base
  belongs_to(:user, { :class_name => "User", :foreign_key => "user_id"})
  belongs_to(:staticbeer, {:class_name => "StaticBeer", :foreign_key => "beer_type"})

  validates( :beer_type, :presence => true)
  validates( :beer_name, :presence => true)
  validates( :star_rating, :presence => true)
  validates( :fav_save, :presence => true)
  validates( :num_consumed, :presence => true, numericality: { only_integer: true })
  validates( :user_id, :presence => true)
  validates( :user, :presence => true)
end
