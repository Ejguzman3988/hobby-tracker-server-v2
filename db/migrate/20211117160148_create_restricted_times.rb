class CreateRestrictedTimes < ActiveRecord::Migration[6.1]
  def change
    create_table :restricted_times do |t|
      t.string :name
      t.string :total_time
      t.string :int
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
