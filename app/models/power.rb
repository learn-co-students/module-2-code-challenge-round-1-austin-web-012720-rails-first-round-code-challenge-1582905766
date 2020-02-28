class Power < ApplicationRecord
    belongs_to :heroinepowers
    #belongs_to :heroines, through: :heroine_powers

    def heroine_count
        Power.heroines.count 
    end
end
