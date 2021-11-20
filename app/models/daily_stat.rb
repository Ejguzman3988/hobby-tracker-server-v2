class DailyStat < ApplicationRecord
  belongs_to :user, optional: true
  has_one :day
  has_many :timers, through: :days
  validates :total_restricted_time, :non_alloted_time, :tracked_time, length: {maximum: 24, minimum: 0}


  def meta_restricted_time=(time)
    self.total_restricted_time = time
    self.non_alloted_time -= time
  end
end
