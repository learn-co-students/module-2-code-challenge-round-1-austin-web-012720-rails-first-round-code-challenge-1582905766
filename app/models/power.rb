class Power < ApplicationRecord
  has_many :heroine_powers
  has_many :heroines, through: :heroine_powers

  def count_heroines_with_power
    self.heroines.count
  end

end
