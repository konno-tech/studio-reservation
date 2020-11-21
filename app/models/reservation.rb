class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :reserve

  def start_time
    self.date
  end
end
