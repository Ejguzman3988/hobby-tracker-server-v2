class Day < ApplicationRecord
  belongs_to :daily_stat
  belongs_to :timer
end
