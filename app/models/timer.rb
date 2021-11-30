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
    interval.save
  end
  def total_time
    if(self.add_all_intervals() != self.class.where(id: self.id).pluck(:total_time)[0])
      self.total_time = self.add_all_intervals()
    end
    super()
  end

  
 

  
  
end
