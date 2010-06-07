class CreateInvestigations < ActiveRecord::Migration
  def self.up
    create_table :investigations do |t|
      t.string :indagine
      t.string :reparto
      t.date :data_inizio
      t.date :data_fine
      t.text :note_indagine

      t.timestamps
    end
  end

  def self.down
    drop_table :investigations
  end
end