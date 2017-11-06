class CreateTag < ActiveRecord::Migration[5.1]
  def change
    create_table :tags do |t|
      t.string :name
    end

    create_table :tags_image do |t|
      t.belongs_to :images, index: true
      t.belongs_to :tags, index: true
      t.timestamps
    end 
  end
end
