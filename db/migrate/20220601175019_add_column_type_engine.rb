class AddColumnTypeEngine < ActiveRecord::Migration[7.0]
  def change
    add_column :parts, :attachment, :string
  end
end
