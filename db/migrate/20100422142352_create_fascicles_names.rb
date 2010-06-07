class CreateFasciclesNames < ActiveRecord::Migration
  def self.up
    create_table :fascicles_names, :id=>false do |t|
      t.integer :name_id
      t.integer :fascicle_id

      t.timestamps
    end
  end

  def self.down
    
    drop_table :fascicles_names
  end
end
