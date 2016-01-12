class Shelter < ActiveRecord::Base
  has_many :animals
  has_many :clients
  has_many :toys, through: :animals
  validates :name, presence: { message: "cannot be blank." }
  validates :name, length: { minimum: 10, message: "must be at least 10 characters." }
end
