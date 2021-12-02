class ChangeDefaultsForDailyStats < ActiveRecord::Migration[6.1]
  def change
    change_table :daily_stats do |t|
      t.change_default :non_allotted_time, 86400
      t.change_default :tracked_time, 86400
    end
  end
end
