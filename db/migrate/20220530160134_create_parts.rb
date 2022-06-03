class CreateParts < ActiveRecord::Migration[7.0]
  def change
    create_table :parts do |t|
      t.string :name
      t.integer :price
      t.boolean :compatible
    end
  end
end
