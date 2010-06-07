class CreateGalleriesNames < ActiveRecord::Migration
  def self.up
    create_table :galleries_names, :id=>false do |t|
      t.integer :name_id
      t.integer :gallery_id

      t.timestamps
    end
  end

  def self.down
    drop_table :galleries_names
  end
end
