class Student < ActiveRecord::Base
  belongs_to :course
  has_one :instructor, through: :course
end
