class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :timeoutable

  has_many(:exercises, {:class_name => "Exercise", :foreign_key => "user_id"})
  has_many(:beers, {:class_name => "Beer", :foreign_key => "user_id"})

  validates( :username, :presence => true, :uniqueness => true)
  validates( :email, :presence => true, :uniqueness => true)
  validates( :encrypted_password, :presence => true)
  validates( :weight, :presence => true, :numericality => true)
end
