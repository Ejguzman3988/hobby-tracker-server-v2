class RenameNonAllotedTimeToNonAllottedTimeFromDailyStats < ActiveRecord::Migration[6.1]
  def change
    rename_column :daily_stats, :non_alloted_time, :non_allotted_time
  end
end
