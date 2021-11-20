class AddColumnDayIdToDailyStats < ActiveRecord::Migration[6.1]
  def change
    add_reference :daily_stats, :day, foreign_key: true
  end
end
