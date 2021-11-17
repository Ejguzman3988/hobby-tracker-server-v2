class CreateTimers < ActiveRecord::Migration[6.1]
  def change
    create_table :timers do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :category, null: false, foreign_key: true
      t.string :name
      t.string :description
      t.integer :time_total
      t.datetime :time_started
      t.datetime :time_ended

      t.timestamps
    end
  end
end
