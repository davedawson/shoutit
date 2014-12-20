class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :shouts, :class_name => :Shout, :foreign_key => :user, :dependent => :delete_all
  has_many :votes, :class_name => :Vote, :foreign_key => :vote
end
