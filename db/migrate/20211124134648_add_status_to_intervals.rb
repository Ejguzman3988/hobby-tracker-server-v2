class AddStatusToIntervals < ActiveRecord::Migration[6.1]
  def change
    add_column :intervals, :status, :string
  end
end
