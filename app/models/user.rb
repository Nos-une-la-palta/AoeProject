class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]
         
  include SimpleDiscussion::ForumUser

  has_one_attached :image
  has_rich_text :body

  def name #required by simple discussion forums
    "#{nick}"
  end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.nick = auth.info.name
      user.image_url = auth.info.image
    end
  end

end
