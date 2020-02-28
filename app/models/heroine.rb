class Heroine < ApplicationRecord
    has_many :powers
    has_many :powers, through: :heroine_powers

    validates :name, presence: :true, uniqueness: true
    validates :super_name, presence: :true, uniqueness: true
end
