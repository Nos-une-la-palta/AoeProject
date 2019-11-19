class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  include SimpleDiscussion::ForumUser

  has_one_attached :image
  has_rich_text :body

  def name
    "#{nick}"
  end
  
end
