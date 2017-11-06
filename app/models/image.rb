class Image < ApplicationRecord
    has_many :users, :through => :image_user
    belongs_to :category
    has_many :tag, :through => :tag_image
end