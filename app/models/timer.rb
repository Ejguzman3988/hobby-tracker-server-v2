class Timer < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :days
  has_many :daily_stats, through: :days
end
