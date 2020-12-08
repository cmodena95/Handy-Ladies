class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :location
      t.date :date
      t.text :description
      t.string :status
      t.date :started_at
      t.date :ended_at
      t.references :skill, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: { to_table: 'users'}
      t.references :handylady, null: false, foreign_key: { to_table: 'users'}

      t.timestamps
    end
  end
end
