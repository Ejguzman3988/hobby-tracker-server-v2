class DailyStat < ApplicationRecord
  belongs_to :user
  has_many :days
  has_many :timers, hrough: :days
end
