class CreateNameVehicles < ActiveRecord::Migration
  def self.up
    create_table :name_vehicles do |t|
      t.integer :name_id
      t.integer :vehicle_id
      t.string :tipo_relazione
        t.text :note
      t.date :inizio_relazione
      t.date :fine_relazione

      t.timestamps
    end
  end

  def self.down
    drop_table :name_vehicles
  end
end
