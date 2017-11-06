class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :image_user
  has_many :images, :through => :image_user
  has_many :likes
  validates_presence_of :first_name, :last_name, :email
  acts_as_voter
  

  def toggleLike(image_id)
    out = {}
    image = Image.find(image_id)
    if voted_for? image
      unlike image
      out[:klass] = "inactive"
    else
      likes image
      out[:klass] = "active"
    end
      out[:number] = numberLike(image)
    
    return out
  end

  def numberLike(image)
    image.get_likes.size
  end
end
