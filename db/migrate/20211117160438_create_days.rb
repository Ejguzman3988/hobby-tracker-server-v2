class CreateDays < ActiveRecord::Migration[6.1]
  def change
    create_table :days do |t|
      t.belongs_to :daily_stat, null: false, foreign_key: true
      t.belongs_to :timer, null: false, foreign_key: true
      t.integer :total_time
      t.date :day

      t.timestamps
    end
  end
end
