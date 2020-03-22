class CreateLoudChildren < ActiveRecord::Migration[6.0]
  def change
    create_table :loud_children do |t|

      t.timestamps
    end
  end
end
