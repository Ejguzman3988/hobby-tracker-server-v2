class RemoveColumnDailyStatIdFromDays < ActiveRecord::Migration[6.1]
  def change
    remove_reference :days, :daily_stat, null: false, foreign_key: true
  end
end
