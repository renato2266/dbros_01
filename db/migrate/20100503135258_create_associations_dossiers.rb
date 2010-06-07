class CreateAssociationsDossiers < ActiveRecord::Migration
    def self.up
      create_table :associations_dossiers, :id=>false do |t|
        t.integer :association_id
        t.integer :dossier_id
    end
  end

    def self.down
      drop_table :associations_dossiers
    end
  end