class RenameColumnTagImagesTable < ActiveRecord::Migration[5.1]
  def change
    rename_column :tag_images, :images_id, :image_id
    rename_column :tag_images, :tags_id, :tag_id
  end
end
