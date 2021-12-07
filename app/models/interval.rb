class Interval < ApplicationRecord

  belongs_to :daily_stat
  belongs_to :timer


  def total_time=(tot)
    super(tot)

    daily_stat = self.daily_stat.update_total(self)
    self.timer.update_total(self)

  end

end
