class News < ApplicationRecord
    validates :title, length: { maximum: 20 }
    validates :content, presence: true
end
