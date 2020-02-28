class Heroine < ApplicationRecord
    # has_and_belongs_to_many :powers
    has_many :heroine_powers
    has_many :powers, through: :heroine_powers
    validates :name, presence: true
    validates :super_name, presence: true
    validates :name, uniqueness: true

end
