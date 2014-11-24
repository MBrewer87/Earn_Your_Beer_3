class StaticExercise < ActiveRecord::Base
  has_many(:exercises, {:class_name => "Exercise", :foreign_key => "exercise_category"})

    validates( :exercise_cat_name, :presence => true, :uniqueness => true)
    validates( :calpermin_low, :presence => true)
    validates( :calpermin_med, :presence => true)
    validates( :calpermin_high, :presence => true)
end
