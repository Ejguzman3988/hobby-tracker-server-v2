class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def add_all_intervals()
    return self.intervals.reduce(0){ |acc, interval| acc + interval.total_time}
  end
end
