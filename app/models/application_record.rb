class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def add_all_intervals(newInterval)
    new_total_time = self.intervals.reduce(newInterval.total_time) do |acc, interval|
      if interval.id != newInterval.id
        acc + interval.total_time
      else
        acc
      end
    end
    return new_total_time
  end
end
