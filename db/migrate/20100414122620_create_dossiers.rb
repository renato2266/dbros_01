class CreateDossiers < ActiveRecord::Migration
  def self.up
    create_table :dossiers do |t|
      t.string :numero
      t.date :data
      t.text :oggetto
      t.text :testo

      t.timestamps
    end
  end

  def self.down
    drop_table :dossiers
  end
end
