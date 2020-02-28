class Power < ApplicationRecord
    has_many :heroines
    has_many :heroines, through: :heroine_powers

    validates :name, presence: :true, uniqueness: true 
    validates :description, presence: :true
end
