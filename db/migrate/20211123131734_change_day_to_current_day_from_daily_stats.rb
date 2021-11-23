class ChangeDayToCurrentDayFromDailyStats < ActiveRecord::Migration[6.1]
  def change
   rename_column :daily_stats, :day, :current_day
  end
end
