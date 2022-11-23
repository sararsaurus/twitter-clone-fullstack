class Follow < ApplicationRecord
  belongs_to :follower, foreign_key: :follower_id, class_name: "User"
  belongs_to :followee, foreign_key: :followee, class_name: "User"

  # has_many :tweets, class_name: "Follow", foreign_key: "follower_id"

  # validates :follower_id, uniqueness: { scope: :followee_id }
  # validates :followee_id, uniqueness: { scope: :follower_id }
end
