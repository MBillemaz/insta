class CreateLike < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.belongs_to :images, index: true
      t.belongs_to :users, index: true
      t.timestamps
    end
  end
end
