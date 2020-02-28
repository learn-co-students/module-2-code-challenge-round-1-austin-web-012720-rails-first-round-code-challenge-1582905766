class Power < ApplicationRecord
  has_many :heroine_powers
  has_many :heroines, through: :heroine_powers
  validates_presence_of :name, message: 'Must Include Name'

end
