class RenameTagsImagesTableToTagImagesTable < ActiveRecord::Migration[5.1]
  def change
    rename_table :tags_image, :tag_images
  end
end
