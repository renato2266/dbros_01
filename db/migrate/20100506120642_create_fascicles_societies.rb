class CreateFasciclesSocieties < ActiveRecord::Migration
    def self.up
      create_table :fascicles_societies, :id=>false do |t|
        t.integer :fascicle_id
        t.integer :society_id

        t.timestamps
      end
    end

    def self.down

      drop_table :fascicles_societies
    end
  end
