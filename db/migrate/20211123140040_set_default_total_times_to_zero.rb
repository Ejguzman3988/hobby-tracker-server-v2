class SetDefaultTotalTimesToZero < ActiveRecord::Migration[6.1]
  def change
    change_table :intervals do |t|
      t.change_default :total_time, 0
    end
    change_table :timers do |t|
      t.rename :time_total, :total_time
      t.change_default :total_time, 0
    end
    change_table :restricted_times do |t|
      t.change_default :total_time, 0
    end
  end
end
