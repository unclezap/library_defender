class CreateMonsters < ActiveRecord::Migration[6.0]
  def change
    create_table :monsters do |t|
      t.string :monster_name
      t.integer :health
      t.integer :attack_damage
      t.string :img
      t.integer :level_id

      t.timestamps
    end
  end
end
