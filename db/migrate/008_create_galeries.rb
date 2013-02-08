class CreateGaleries < ActiveRecord::Migration
  def self.up
    create_table :galeries do |t|
      t.string :name
      t.string :info
      t.timestamps
    end
  end

  def self.down
    drop_table :galeries
  end
end