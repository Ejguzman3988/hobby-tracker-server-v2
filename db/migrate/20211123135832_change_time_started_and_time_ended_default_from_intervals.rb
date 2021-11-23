class ChangeTimeStartedAndTimeEndedDefaultFromIntervals < ActiveRecord::Migration[6.1]
  def change
    change_table :intervals do |t|
      t.change_default :time_started, nil
      t.change_default :time_ended, nil
    end
  end
end
