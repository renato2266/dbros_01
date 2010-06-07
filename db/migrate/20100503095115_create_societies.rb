class CreateSocieties < ActiveRecord::Migration
  def self.up
    create_table :societies do |t|
      t.string :denominazione
      t.string :forma_giuridica
      t.string :sede
      t.string :cf_pi
      t.text :descrizione

      t.timestamps
    end
  end

  def self.down
    drop_table :societies
  end
end
