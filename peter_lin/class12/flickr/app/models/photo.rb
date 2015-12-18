class Photo < ActiveRecord::Base

  validates :url, presence: true
  validates :caption, presence: true

  belongs_to :user

  validates :url, uniqueness: true
  validates :caption, length: { maximum: 140 }

end
