class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :relationships
  has_many :tweets
  has_many :likes
  has_many :liked_tweets, through: :likes, :source => :user

  has_many :followers, :class_name => "Relationship", :foreign_key => "user_id"
  has_many :following, :class_name => "Relationship", :foreign_key => "follower_id"
end
