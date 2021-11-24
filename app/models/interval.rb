class Interval < ApplicationRecord
  belongs_to :daily_stat
  belongs_to :timer

  def status=(activity)
    super(activity)
    case activity.downcase
    when "start"
      # This if statement deals with the pausing
      if(self.time_started != nil)
        self.time_started = Time.current
      elsif (self.total_time)
        self.time_started = Time.current - self.total_time
      end
    when "ended"
      self.total_time = self.time_ended - self.time_start
    end
  end

end
