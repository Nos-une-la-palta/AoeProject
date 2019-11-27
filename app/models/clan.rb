class Clan < ApplicationRecord
    validates :avatar, :name, :link, presence: true
end
