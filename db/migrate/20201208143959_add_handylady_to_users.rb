class AddHandyladyToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :handylady, :boolean, default: false, null: false
  end
end
