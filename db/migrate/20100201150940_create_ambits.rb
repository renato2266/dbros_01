class CreateAmbits < ActiveRecord::Migration
  def self.up
    create_table :ambits do |t|
      t.string :ambito_criminale
      t.text :note_ambito

      t.timestamps
    end
  end

  def self.down
    drop_table :ambits
  end
end
