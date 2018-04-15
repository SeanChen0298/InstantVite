class Event < ApplicationRecord
  belongs_to :jio
  has_many :joiners
   has_many :jios, through: :joiners
  def time_left
    (created_at + timelimit.minutes)
  end
end
