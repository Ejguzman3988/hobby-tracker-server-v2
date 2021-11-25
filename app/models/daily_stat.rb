class DailyStat < ApplicationRecord
  belongs_to :user, optional: true
  has_many :intervals
  has_many :timers, through: :intervals
  validates :total_restricted_time, :non_alloted_time, :tracked_time, length: {maximum: 24, minimum: 0}
  validate :optional_with_user

  def optional_with_user
    if !self.user.present? && self.intervals.length === 0
      errors.add(:interval, "must be present when creating timer")
    end
  end

  def meta_restricted_time=(time)
    self.total_restricted_time = time
    self.non_alloted_time -= time
  end
  
  def non_alloted_time=(time)
    super((time - self.total_time))
  end
end
