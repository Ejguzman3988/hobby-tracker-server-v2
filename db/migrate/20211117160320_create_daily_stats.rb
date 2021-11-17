class CreateDailyStats < ActiveRecord::Migration[6.1]
  def change
    create_table :daily_stats do |t|
      t.integer :total_restrcited_time
      t.integer :non_alloted_time
      t.total :tracked_time
      t.int :max_time
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
