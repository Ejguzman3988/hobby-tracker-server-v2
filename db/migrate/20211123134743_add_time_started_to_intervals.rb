class AddTimeStartedToIntervals < ActiveRecord::Migration[6.1]
  def change
    add_column :intervals, :time_started, :time
  end
end
