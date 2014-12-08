class Exercise < ActiveRecord::Base
  belongs_to(:user, { :class_name => "User", :foreign_key => "user_id"})
  belongs_to(:staticexercise, { :class_name => "StaticExercise", :foreign_key => "exercise_category"})

  validates( :exercise_category, :presence => true)
  validates( :duration, :presence => true, numericality: { only_integer: true })
  validates( :intensity, :presence => true)
  validates( :user_id, :presence => true)
  validates( :favsave, :presence => true)

end
