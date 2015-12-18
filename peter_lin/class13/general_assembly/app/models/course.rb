class Course < ActiveRecord::Base
  has_many :students, dependent: :destroy
  has_one :instructor, dependent: :destroy
end
