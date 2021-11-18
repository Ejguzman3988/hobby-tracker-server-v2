class AddTotalTimeToDays < ActiveRecord::Migration[6.1]
  def change
    add_column :days, :total_time, :int
  end
end
