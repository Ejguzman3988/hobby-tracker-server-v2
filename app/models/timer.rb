class Timer < ApplicationRecord
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
end
