class Tag < ApplicationRecord
    has_many :tag_image
    has_many :image, :through => :tag_image
end