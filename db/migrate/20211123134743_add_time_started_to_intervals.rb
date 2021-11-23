class AddTimeStartedToIntervals < ActiveRecord::Migration[6.1]
  def change
    add_column :intervals, :time_started, :time, default: Time.now
  end
end
