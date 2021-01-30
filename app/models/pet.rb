class Pet < ApplicationRecord

  has_many :pet_histories
  belongs_to :client

  def history_count
    self.pet_histories.count
  end

  def avg_weight
    weight_array = PetHistory.where(pet_id: self.id).pluck(:weight)
    if weight_array.size == 0 
    "This pet don't have histories"
    else  
    weight_array.sum / weight_array.size
    end
  end

  def avg_height
    
    height_array = PetHistory.where(pet_id: self.id).pluck(:heigth)
    if height_array.size == 0 
    "This pet don't have histories"
    else  
    height_array.sum / height_array.size
    end
  end

  def max_height
    self.pet_histories.pluck(:heigth).max
  end

  def max_weight
    self.pet_histories.pluck(:weight).max
  end

 


end
