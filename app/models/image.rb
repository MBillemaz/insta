class Image < ApplicationRecord
    has_many :users, :through => :image_user
    belongs_to :category
    has_many :tag, :through => :tag_image
    has_many :likes

    def self.filter(args)
        case args
        when args[:category_id].present?
            return Image.where({category_id: args[:category_id]})
        when args[:image_id].present?
            return Image.where({image_id: args[:image_id]})
        when args[:tag_id].present?
            return Image.where({tag_id: args[:tag_id]})
        else
            return Image.all
        end

    end 
end