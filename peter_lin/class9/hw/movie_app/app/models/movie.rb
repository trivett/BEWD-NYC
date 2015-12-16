class Movie < ActiveRecord::Base

  validates :title, presence: true
  validates :description, presence: true
  validates :year_released, presence: true
  validates :year_released, length:{ is: 4 }

end
