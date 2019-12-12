class Twitch < ApplicationRecord
    validates :owner, :url, :image_twitch, presence: true
    
end
