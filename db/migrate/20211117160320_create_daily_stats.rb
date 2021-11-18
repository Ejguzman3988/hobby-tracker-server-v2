class CreateDailyStats < ActiveRecord::Migration[6.1]
  def change
    create_table :daily_stats do |t|
      t.integer :total_restricted_time
      t.integer :non_alloted_time
      t.integer :tracked_time
      t.integer :max_time
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
