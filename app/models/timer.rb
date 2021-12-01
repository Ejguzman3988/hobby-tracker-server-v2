class Timer < ApplicationRecord
  serialize :user, JSON
  serialize :category, JSON
  serialize :intervals, JSON
 

  belongs_to :user
  belongs_to :category
  has_many :intervals
  has_many :daily_stats, through: :intervals

  

  def initialize(attr)
    super(attr)
    
    daily_stat = DailyStat.find_by(current_day: Date.today) || DailyStat.new(current_day: Date.today)
    interval = daily_stat.intervals.build(current_day: Date.today) 
    interval.timer = self
    daily_stat.total_restricted_time = User.find(self.user_id).default_stat.total_restricted_time
    daily_stat.save
    interval.save
  end
  
  def total_time
    if(self.add_all_intervals() != self.class.where(id: self.id).pluck(:total_time)[0])
      self.total_time = self.add_all_intervals()
    end
    super()
  end

  
 

  
  
end
