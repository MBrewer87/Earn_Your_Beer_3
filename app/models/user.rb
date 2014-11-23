class User < ActiveRecord::Base
  has_many(:exercises, {:class_name => "Exercise", :foreign_key => "user_id"})
  has_many(:beers, {:class_name => "Beer", :foreign_key => "user_id"})
end
