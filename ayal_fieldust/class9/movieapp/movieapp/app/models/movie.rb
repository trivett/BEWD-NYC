class Movie < ActiveRecord::Base
  validates :title, presence: true  #checks that price exists.
  validates :description, presence: true  #checks that price exists.
  validates :year_released, presence: true  #checks that price exists.
  validates :year_released, length: {minimum: 4} #minimum 4 digits for price.
end
