class Photo < ActiveRecord::Base

  validates :url, presence: true
  validates :caption, presence: true

  belongs_to :user

end
