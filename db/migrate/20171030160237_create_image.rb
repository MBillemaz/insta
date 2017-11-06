class CreateImage < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :name
      t.string :picture
    end

    create_table :category do |t|
      t.string :name
    end

    create_table :image_user do |t|
      t.belongs_to :images, index: true
      t.belongs_to :users, index: true
      t.timestamps
    end
  end
end
