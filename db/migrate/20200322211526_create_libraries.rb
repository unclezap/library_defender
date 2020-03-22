class CreateLibraries < ActiveRecord::Migration[6.0]
  def change
    create_table :libraries do |t|
      t.integer :health
      t.integer :game_id

      t.timestamps
    end
  end
end
