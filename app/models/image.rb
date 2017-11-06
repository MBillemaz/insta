class Image < ApplicationRecord
  has_many :users, :through => :image_user
  belongs_to :category
  has_many :tag, :through => :tag_image
  has_many :likes
  mount_uploader :picture, PictureUploader

    THUMBNAIL_URL = "http://www.latorredelsol.com/press/components/com_easyblog/themes/wireframe/images/placeholder-image.png"

    def thumbnail
      out = picture.url
      out = THUMBNAIL_URL unless picture.url

      out
    end

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
