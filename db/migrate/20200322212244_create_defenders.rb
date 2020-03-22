class CreateDefenders < ActiveRecord::Migration[6.0]
  def change
    create_table :defenders do |t|
      t.integer :cost
      t.integer :attack_damage
      t.string :img

      t.timestamps
    end
  end
end
