class Jio < ApplicationRecord
  has_many :joiners
  has_many :events, through: :joiners
end
