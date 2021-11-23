class AddDateToDailyStats < ActiveRecord::Migration[6.1]
  def change
    add_column :daily_stats, :day, :date
  end
end
