class RenameCategory < ActiveRecord::Migration[5.1]
  def change
    rename_table :category, :categories
  end
end
