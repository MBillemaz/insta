class Image < ApplicationRecord
  mount_uploader :picture, PictureUploader

    belongs_to :user
    belongs_to :category
    has_many :tag_images
    has_many :tags, :through => :tag_images
    has_many :likes

    attr_accessor :liked
    acts_as_votable

    validates_presence_of :picture

    THUMBNAIL_URL = "http://www.latorredelsol.com/press/components/com_easyblog/themes/wireframe/images/placeholder-image.png"

    def thumbnail
      out = picture.url
      out = THUMBNAIL_URL unless picture.url

      out
    end

    def self.search(args)
        out = []
        search = args[:search] 
        if search.first == "#"
            search[0] = ''
            out = Image.joins(:tag_images).joins(:tags).where(["tags.name LIKE :query", query: "%#{search.capitalize}%"]).order('images.id DESC')
        else
            out = Image.joins(:user).where(["users.first_name LIKE :query", query: "%#{search.capitalize}%"]).order('images.id DESC')
        end
        return out.limit(6)
    end

    def self.filter(args)
        out = []
        if args[:search].present?
            out = search(args)
        elsif args[:category_id].present?
            out = Image.where(["category_id = ?",args[:category_id]]).order('id DESC')
        elsif args[:image_id].present?
            out = Image.where(["id = ?",args[:image_id]]).order('id DESC')
        elsif args[:tag_id].present?
            out = Image.joins(:tag_images).where(["tag_id = ?",args[:tag_id]])    
        elsif args[:user_id].present?
            out = Image.where(["user_id = ?",args[:user_id]]).order('id DESC')      
        else
            out = Image.all.order('id DESC')    
        end

        if args[:last_id].present?
            out = out.where("id < ?", args[:last_id]).order('id DESC')
        end
        return out.limit(6)
    end

end
