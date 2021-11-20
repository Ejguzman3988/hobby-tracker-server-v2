class Day < ApplicationRecord
  has_one :daily_stat
  belongs_to :timer
end
