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
    super(time)
    self.non_allotted_time = (self.tracked_time - self.total_time - time)
  end

  def total_time=(time)
    self.non_allotted_time = self.tracked_time - self.total_restricted_time - time
    super(time)
  end

  def total_time
    if(self.add_all_intervals() != self.class.where(id: self.id).pluck(:total_time)[0] )
      self.total_time = self.add_all_intervals()
    end
    super()
  end

  


  

end
