class CreateGaleryPhotos < ActiveRecord::Migration
  def change
    create_table :galery_photos do |t|
      t.integer :galery_id
      t.integer :photo_id

      t.timestamps
    end
  end
end