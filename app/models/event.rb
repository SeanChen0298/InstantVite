class Event < ApplicationRecord
  belongs_to :jio
  
  def expiry
    created_at + timelimit.minutes
  end
end
