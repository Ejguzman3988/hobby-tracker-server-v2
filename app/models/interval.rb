class Interval < ApplicationRecord

  belongs_to :daily_stat
  belongs_to :timer

  def status=(activity)
    super(activity)
    case activity.downcase
    when "play"
      # This if statement deals with the pausing
      if(self.time_started != nil)
        self.time_started = Time.current
      elsif (self.total_time)
        self.time_started = Time.current - self.total_time
      end
    when "pause"
      self.time_ended = Time.current
      self.total_time = self.time_ended - self.time_started
    end
  end

  def total_time=(tot)
    super(tot)
    self.daily_stat.tracked_time += tot
    self.timer.total_time += tot
  end

end
