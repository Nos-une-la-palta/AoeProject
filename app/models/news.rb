class News < ApplicationRecord
    validates :title, length: { maximum: 50  }
    validates :content, presence: true
end
