class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :friendships, class_name: 'UserFriend'
  has_many :friends, class_name: 'User', through: :friendships
  has_many :place_relationships
  has_many :received_places, through: :place_relationships
end
