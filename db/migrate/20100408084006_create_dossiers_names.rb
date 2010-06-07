class CreateDossiersNames < ActiveRecord::Migration
  def self.up
    create_table :dossiers_names, :id=>false do |t|
      t.integer :name_id
      t.integer :dossier_id

      t.timestamps
    end
  end

  def self.down
    drop_table :dossiers_names
  end
end
