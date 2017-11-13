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

    def thumbnail
      out = picture.url
      out = asset_path("placeholder-image.png") unless picture.url

      out
    end

    def self.filter(args)
        out = []
        if args[:category_id].present?
            out = Image.where(["category_id = ?",args[:category_id]])
        elsif args[:image_id].present?
            out = Image.where(["id = ?",args[:image_id]])
        elsif args[:tag_id].present?
            out = Image.joins(:tag_images).where(["tag_id = ?",args[:tag_id]])
        elsif args[:user_id].present?
            out = Image.where(["user_id = ?",args[:user_id]])
        else
            out = Image.all
        end

        if args[:last_id].present?
            out = out.where("id > ?", args[:last_id])
        end

        return out.limit(6)
    end

end
