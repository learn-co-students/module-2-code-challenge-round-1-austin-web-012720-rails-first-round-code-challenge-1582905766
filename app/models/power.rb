class Power < ApplicationRecord
    has_many :heroine_powers
    has_many :heroines, through: :heroine_powers
    # has_and_belongs_to_many :heroines



end
