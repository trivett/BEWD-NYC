class Instructor < ActiveRecord::Base
  belongs_to :course
  has_many :students, through: :course, dependent: :destroy
end
