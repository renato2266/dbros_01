class CreateDossiersSocieties < ActiveRecord::Migration
  def self.up
    create_table :dossiers_societies, :id=>false do |t|
      t.integer :society_id
      t.integer :dossier_id
  end
end

  def self.down
    drop_table :dossier_societies
  end
end