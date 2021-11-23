class AddTimeEndedToIntervals < ActiveRecord::Migration[6.1]
  def change
    add_column :intervals, :time_ended, :time, default: Time.now
  end
end
