class User < ApplicationRecord
  has_many :restricted_times
  has_many :timers
  has_one :daily_stat
  has_many :daily_stats, through: :timers
  has_many :categories, through: :timers
end
