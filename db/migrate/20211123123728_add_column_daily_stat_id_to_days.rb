class AddColumnDailyStatIdToDays < ActiveRecord::Migration[6.1]
  def change
    add_reference :days, :daily_stat, foreign_key: true
  end
end
