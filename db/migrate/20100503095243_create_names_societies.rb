class CreateNamesSocieties < ActiveRecord::Migration
  def self.up
    create_table :names_societies, :id=>false do |t|
      t.integer :name_id
      t.integer :society_id
  end
end

  def self.down
    drop_table :names_societies
  end
end

