class User < ApplicationRecord
  has_many :restricted_times
  has_many :timers
  has_one :default_stat, class_name: "DailyStat"
  has_many :daily_stats, through: :timers
  has_many :categories, through: :timers

  has_secure_password

  def meta_restricted_times=(res_times)
    timers = res_times.map do |res|
      RestrictedTime.create(res)
    end
    total_res_time = timers.reduce(0) { |sum, n| n.total_time + sum}
    daily_stat = DailyStat.create({meta_restricted_time: total_res_time, user_id: self.id})

  end

end
