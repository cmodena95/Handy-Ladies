class FixAvailableUntil < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :available_util, :boolean
    add_column :users, :available_until, :boolean
  end
end
