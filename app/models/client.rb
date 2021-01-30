class Client < ApplicationRecord
  has_many :pets


  def qpets
    self.pets.count
  end

  
end
