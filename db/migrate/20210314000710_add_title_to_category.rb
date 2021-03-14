class AddTitleToCategory < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :title, :string
  end
end
