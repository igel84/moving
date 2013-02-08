class CreatePhotos < ActiveRecord::Migration
  def self.up
    create_table :photos do |t|
      t.string 		:name
      t.string 		:info
      t.string 		:photo_image_file_name
      t.string 		:photo_image_content_type
      t.integer 	:photo_image_file_size
      t.datetime 	:photo_image_updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :photos
  end
end