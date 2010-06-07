class CreateAssociations < ActiveRecord::Migration
  def self.up
    create_table :associations do |t|
      t.string :associazione_criminale
      t.text :note_associazione
      t.integer :area_id

      t.timestamps
    end
  end

  def self.down
    drop_table :associations
  end
end
