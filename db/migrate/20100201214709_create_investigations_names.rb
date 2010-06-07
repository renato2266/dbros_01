class CreateInvestigationsNames < ActiveRecord::Migration
  def self.up
    create_table :investigations_names, :id=>false do |t|
      t.integer :name_id
      t.integer :investigation_id

      t.timestamps
    end
  end

  def self.down
    drop_table :investigations_names
  end
end