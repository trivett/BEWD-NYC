class Photo < ActiveRecord::Base
  belongs_to :user
  validates :url, uniqueness: true
  validates :caption, length: { maximum: 140 }
end
