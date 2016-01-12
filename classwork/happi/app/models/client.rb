class Client < ActiveRecord::Base
  belongs_to :shelter
  has_many :animals
  has_many :toys, through: :animals
end
