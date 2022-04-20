class AddBoardRefToLists < ActiveRecord::Migration[6.1]
  def change
    default_board_id = Class.new(ApplicationRecord)
                            .tap { |c| c.table_name = :boards }
                            .find_or_create_by(title: 'Default board')
                            .id
    add_reference :lists, :board, null: false, foreign_key: true, default: default_board_id
  end
end
