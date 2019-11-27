class Twitch < ApplicationRecord
    validates :owner, :url, presence: true
end
