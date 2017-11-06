class RemoveImageUser < ActiveRecord::Migration[5.1]
  def change
    drop_table :image_user
  end
end
