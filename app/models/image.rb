class Image < ApplicationRecord
    has_many :users, :through => :image_user
    belongs_to :category
end