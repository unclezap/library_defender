class CreateJuniorLibrarians < ActiveRecord::Migration[6.0]
  def change
    create_table :junior_librarians do |t|

      t.timestamps
    end
  end
end
