class Tournament < ApplicationRecord
    validates :title, :map, :content, presence: true
    validates :title, length: { maximum: 50 }
end
