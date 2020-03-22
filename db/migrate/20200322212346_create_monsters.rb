class CreateMonsters < ActiveRecord::Migration[6.0]
  def change
    create_table :monsters do |t|
      t.integer :health
      t.integer :attack_damage
      t.string :img

      t.timestamps
    end
  end
end
