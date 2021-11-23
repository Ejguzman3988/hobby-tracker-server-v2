class RemoveTimeStatedFromTimer < ActiveRecord::Migration[6.1]
  def change
    change_table :timers do |t|
      t.remove :time_started
      t.remove :time_ended
    end
    
  end
end
