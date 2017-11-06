class Tag_image < ApplicationRecord
    belongs_to :tag
    belongs_to :image
end