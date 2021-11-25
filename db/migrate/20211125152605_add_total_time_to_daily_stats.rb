class AddTotalTimeToDailyStats < ActiveRecord::Migration[6.1]
  def change
    add_column :daily_stats, :total_time, :integer, default: 0
  end
end
