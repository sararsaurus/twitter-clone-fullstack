class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :tweets

  has_many :followed_users, foreign_key: :follower_id, class_name: "Follow"
  has_many :followees, through: :followed_users, source: :followee
  has_many :following_users, foreign_key: :followee_id, class_name: "Follow"
  has_many :followers, through: :following_users, source: :follower

  validates :user_name, uniqueness: { case_sensitive: true }
  validates :user_name, presence: true
  validates :name, presence: true
  validates :location, presence: true
  validates :bio, presence: true
end
