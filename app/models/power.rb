class Power < ApplicationRecord
    has_many :heroine_powers
    has_many :heroines, through: :heroine_powers

    def heroine_count
        self.heroines.map do |heroine|
           heroine 
        end.count
    end

end
