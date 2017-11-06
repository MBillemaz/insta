class Image_user < ApplicationRecord
    belongs_to :user
    belongs_to :image
end