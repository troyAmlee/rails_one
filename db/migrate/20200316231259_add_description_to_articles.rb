class AddDescriptionToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :description, :text
    add_column :articles, :content, :text
    add_column :articles, :updated_at, :datetime
  end
end
