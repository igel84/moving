class AddSlugToGaleries < ActiveRecord::Migration
  def change
    add_column :galeries, :slug, :string
    add_index :galeries, :slug, unique: true
  end
end