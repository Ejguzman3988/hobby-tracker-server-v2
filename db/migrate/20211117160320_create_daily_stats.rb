class CreateDailyStats < ActiveRecord::Migration[6.1]
  def change
    create_table :daily_stats do |t|
      t.integer :total_restricted_time, default: 0
      t.integer :non_alloted_time, deafult: 0
      t.integer :tracked_time, default: 24
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
