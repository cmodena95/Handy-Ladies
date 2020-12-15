class ChangeDateFormatInJobs < ActiveRecord::Migration[6.0]
  def change
    change_column :jobs, :date, :datetime
  end
end
