class Tag < ApplicationRecord
    has_many :image, :through => :tag_image
end