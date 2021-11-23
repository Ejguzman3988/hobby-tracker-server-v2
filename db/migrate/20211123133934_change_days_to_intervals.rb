class ChangeDaysToIntervals < ActiveRecord::Migration[6.1]
  def change
    rename_table :days, :intervals
  end
end
