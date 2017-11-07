class Tag < ApplicationRecord
    has_many :tag_images
    has_many :images, :through => :tag_images
end
