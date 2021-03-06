class DailyStat < ApplicationRecord
  belongs_to :user, optional: true
  has_many :intervals
  has_many :timers, through: :intervals
  validates :total_restricted_time, :non_allotted_time, :tracked_time, length: {maximum: 24, minimum: 0}
  validate :optional_with_user

  def initialize(attr)
    super(attr)
    
  end

  def optional_with_user
    if !self.user.present? && self.intervals.length === 0
      errors.add(:interval, "must be present when creating timer")
    end
  end

  def total_restricted_time=(time)
    self.update(non_allotted_time: (self.tracked_time - self.total_time - time))
    super(time)
  end

  def total_time=(time)
    self.update(non_allotted_time: (self.tracked_time - self.total_restricted_time - time)) 
    super(time)
  end

 
  def update_total(interval)
    self.update(total_time: add_all_intervals(interval), non_allotted_time: (self.tracked_time - self.total_restricted_time - add_all_intervals(interval)))
    # TODO: FIX LATER NEEDS TO UPDATE ADD_ALL_INTERVALS, When interval is paused it gets the old add alll intervals
    return add_all_intervals(interval)
  end
end
