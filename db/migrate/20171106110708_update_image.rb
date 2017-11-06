class UpdateImage < ActiveRecord::Migration[5.1]
  def change
    add_column :images, :user_id, :integer
    add_column :images, :category_id, :integer
  end
end
