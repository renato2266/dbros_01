class CreateNames < ActiveRecord::Migration
  def self.up
    create_table :names do |t|
      t.string :cognome_nome, :null => false
      t.string :luogo_nascita
      t.date :data_nascita
      t.string :cod_fiscale, :limit => 16
      t.string :residenza
      t.string :via
      t.string :domicilio
      t.string :cittadinanza
      t.string :professione
      t.string :soprannome
      t.string :alias
      t.text :note_generali
      t.integer :association_id
      t.integer :ambit_id
      t.integer :area_id

      t.timestamps
    end
  end

  def self.down
    drop_table :names
  end
end