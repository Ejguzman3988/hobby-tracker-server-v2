class User < ApplicationRecord

  has_many :restricted_times
  has_many :timers
  has_one :default_stat, class_name: "DailyStat"
  has_many :daily_stats, through: :timers
  has_many :categories, through: :timers

  has_secure_password

  
end
