class RemoveCompatibleFromParts < ActiveRecord::Migration[7.0]
  def change
    remove_column :parts, :compatible, :boolean
  end
end
