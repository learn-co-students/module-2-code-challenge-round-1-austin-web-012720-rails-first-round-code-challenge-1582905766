class HeroniePower < ApplicationRecord
    has_many :powers, through: :heroines
end