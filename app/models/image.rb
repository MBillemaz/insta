class Image < ApplicationRecord
    belongs_to :user
    belongs_to :category
    has_many :tab_image
    has_many :tag, :through => :tag_image
    has_many :likes
    mount_uploader :picture, PictureUploader
    attr_accessor :liked
    acts_as_votable
   
    THUMBNAIL_URL = "http://www.latorredelsol.com/press/components/com_easyblog/themes/wireframe/images/placeholder-image.png"

    def thumbnail
      out = picture.url
      out = THUMBNAIL_URL unless picture.url

      out
    end

    def self.filter(args)
        out = []
        if args[:category_id].present?
            out = Image.where(["category_id = ?",args[:category_id]])
        elsif args[:image_id].present?
            out = Image.where(["image_id = ?",args[:image_id]])
        elsif args[:tag_id].present?
            out = Image.where(["tag_id = ?",args[:tag_id]])       
        else
            out = Image.all     
        end

        if args[:last_id].present?
            out = out.where("id > ?", args[:last_id])
        end

        return out.limit(6)
    end

end
