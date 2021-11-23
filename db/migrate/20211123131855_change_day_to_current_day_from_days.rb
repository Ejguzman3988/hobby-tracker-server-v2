class ChangeDayToCurrentDayFromDays < ActiveRecord::Migration[6.1]
  def change
    rename_column :days, :day, :current_day
  end
end
