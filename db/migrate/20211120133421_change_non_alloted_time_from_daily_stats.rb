class ChangeNonAllotedTimeFromDailyStats < ActiveRecord::Migration[6.1]
  def change
    change_column_default :daily_stats, :non_alloted_time, 24
  end
end
