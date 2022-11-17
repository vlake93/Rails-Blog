class CreateVics < ActiveRecord::Migration[7.0]
  def change
    create_table :vics do |t|
      t.string :title
      t.string :name
      t.string :about

      t.timestamps
    end
  end
end
