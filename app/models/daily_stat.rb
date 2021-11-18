class DailyStat < ApplicationRecord
  belongs_to :user, optional: true;
  has_one :day
  has_many :timers, through: :days
end
