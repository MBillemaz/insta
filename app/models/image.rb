class Image < ApplicationRecord
    has_many :users, :through => :image_user
    belongs_to :category
    has_many :tag, :through => :tag_image
    has_many :likes

      THUMBNAIL_URL = "http://www.latorredelsol.com/press/components/com_easyblog/themes/wireframe/images/placeholder-image.png"

      def thumbnail
        out = picture.url
        out = THUMBNAIL_URL unless picture.url

        out
      end

      def self.search(args)
        Image.where("name LIKE :query", query: "%#{args[:keywords]}%")
      end

end
