class CreateVehicles < ActiveRecord::Migration
  def self.up
    create_table :vehicles do |t|
      t.string :tipo
      t.string :targa
      t.string :modello
      t.string :colore
      t.text :note

      t.timestamps
    end
  end

  def self.down
    drop_table :vehicles
  end
end
