class CreateDefenders < ActiveRecord::Migration[6.0]
  def change
    create_table :defenders do |t|
      t.string :defender_name
      t.integer :cost
      t.integer :attack_damage
      t.string :img
      t.integer :level_id

      t.timestamps
    end
  end
end
