class CreateBuild < ActiveRecord::Migration[7.0]
  def change
    create_table :builds do |t|
      t.integer :slot_one_part_id
      t.integer :slot_two_part_id
      t.integer :slot_three_part_id
      t.integer :slot_four_part_id
    end
  end
end
