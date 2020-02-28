class Heroine < ApplicationRecord
  has_many :heroine_powers
  has_many :powers, through: :heroine_powers
  validates_presence_of :name, message: 'Must Include Name'
  validates_presence_of :super_name, message: 'Must Include Super Name'
  validates_uniqueness_of :super_name, message: 'Super Name Already Exists' 

end
