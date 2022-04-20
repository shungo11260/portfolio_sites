class RenameToDoToTask < ActiveRecord::Migration[6.1]
  def change
    rename_table :to_dos, :tasks
  end
end
