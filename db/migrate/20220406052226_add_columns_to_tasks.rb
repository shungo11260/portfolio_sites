class AddColumnsToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :start_date, :date
    add_column :tasks, :end_date, :date
    add_column :tasks, :est_man_hours, :time
  end
end
