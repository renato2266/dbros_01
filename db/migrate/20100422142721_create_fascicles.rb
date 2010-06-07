class CreateFascicles < ActiveRecord::Migration
  def self.up
    create_table :fascicles do |t|
      t.integer :numero
      t.text :note

      t.timestamps
    end
  end

  def self.down
    drop_table :fascicles
  end
end
