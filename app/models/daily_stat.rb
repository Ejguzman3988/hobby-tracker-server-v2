class DailyStat < ApplicationRecord
  belongs_to :user
  has_many :days
  has_many :timers, through: :days
end
