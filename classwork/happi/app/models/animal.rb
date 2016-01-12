class Animal < ActiveRecord::Base
  belongs_to :shelter
  belongs_to :client
  has_many :toys

  def owner
    if self.client
      self.client.name
    elsif self.shelter
      self.shelter.name
    else
      "I'm orphaned!"
    end
  end

  def adopt(client)
    shelter = self.shelter 
    shelter.animals.delete(self)
    client.animals << self 
  end

  def donate(shelter)
    client = self.client
    client.animals.delete(self)
    shelter.animals << self
  end

end
