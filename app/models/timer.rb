class Timer < ApplicationRecord
  serialize :user, JSON
  serialize :category, JSON
  serialize :intervals, JSON
 

  belongs_to :user
  belongs_to :category
  has_many :intervals
  has_many :daily_stats, through: :intervals

  attr_accessor :total_time

  def initialize(attr)
    super(attr)
    found_stat = DailyStat.find_by(current_day: Date.today)

    # If stat was found then check if the stat belongs to current user
    # TODO: Change relationship between stat and user. 
    current_user_stat = (found_stat && found_stat.intervals[0].timer.user_id == self.user_id) 
    daily_stat = current_user_stat ? daily_stat : DailyStat.new(current_day: Date.today)
    interval = daily_stat.intervals.build(current_day: Date.today) 
    interval.timer = self
    current_user = User.find(self.user_id)
    daily_stat.total_restricted_time =  current_user.default_stat ? current_user.default_stat.total_restricted_time : 0;
    daily_stat.save
    interval.save
  end
  
  def update_total(interval)
    self.update(total_time: add_all_intervals(interval))
    binding.pry
    return add_all_intervals(interval)
  end
 

  
  
end
