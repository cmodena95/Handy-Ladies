class AddFieldsToUser < ActiveRecord::Migration[6.0]
  def change
    change_table :users do |t|
      t.string :name
      t.string :address
      t.text :bio
      t.float :latitude
      t.float :longitude
      t.date  :available_util
    end
  end
end
