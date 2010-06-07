class AddAttachmentsPhotoToName < ActiveRecord::Migration
  def self.up
    add_column :names, :photo_file_name, :string
    add_column :names, :photo_content_type, :string
    add_column :names, :photo_file_size, :integer
    add_column :names, :photo_updated_at, :datetime
  end

  def self.down
    remove_column :names, :photo_file_name
    remove_column :names, :photo_content_type
    remove_column :names, :photo_file_size
    remove_column :names, :photo_updated_at
  end
end
