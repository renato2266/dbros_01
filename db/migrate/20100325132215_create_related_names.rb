class CreateRelatedNames < ActiveRecord::Migration
  def self.up
    create_table :related_names, :id=>false do |t| 
      t.integer :related_name_id
      t.integer :main_name_id

      t.timestamps
    end
  end

  def self.down
    drop_table :related_names
  end
end
