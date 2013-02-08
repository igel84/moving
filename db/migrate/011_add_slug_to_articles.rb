class AddSlugToArticles < ActiveRecord::Migration
  def change
    remove_column :articles, :permalink
    add_column :articles, :slug, :string
    add_index :articles, :slug, unique: true
  end
end