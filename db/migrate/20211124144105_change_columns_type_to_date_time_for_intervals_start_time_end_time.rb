class ChangeColumnsTypeToDateTimeForIntervalsStartTimeEndTime < ActiveRecord::Migration[6.1]
  def change
    change_table :intervals do |t|
      t.change :time_started, :datetime
      t.change :time_ended, :datetime
    end
  end
end
