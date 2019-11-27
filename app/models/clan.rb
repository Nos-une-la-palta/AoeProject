class Clan < ApplicationRecord
    validates :name, presence: true
    validates :avatar, url: true, presence: true
    validates :link, url: true, presence: true
end
