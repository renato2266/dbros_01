class CreateAreas < ActiveRecord::Migration
  def self.up
    create_table :areas do |t|
      t.string :area_criminale
      t.text :note_area
      t.integer :ambit_id

      t.timestamps
    end
  end

  def self.down
    drop_table :areas
  end
end
