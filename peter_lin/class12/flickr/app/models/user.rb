class User < ActiveRecord::Base
  has_many :photos

  validates :email, uniqueness: true
  # validates :games_played, numericality: { only_integer: true }
end
