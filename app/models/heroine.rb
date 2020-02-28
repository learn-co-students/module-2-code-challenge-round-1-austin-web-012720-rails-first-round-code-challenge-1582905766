class Heroine < ApplicationRecord
    has_many :heroine_powers
    has_many :powers, :through => :heroine_powers
    validates :name, presence: true, uniqueness: true
    validates :super_name, presence: true

    accepts_nested_attributes_for :powers
end
