class AddListRefToTasks < ActiveRecord::Migration[6.1]
  def change
    default_list_id = Class.new(ApplicationRecord)
                            .tap { |c| c.table_name = :lists }
                            .find_or_create_by(title: 'Default list')
                            .id
    add_reference :tasks, :list, null: false, foreign_key: true, default: default_list_id
  end
end
