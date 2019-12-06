class Tournament < ApplicationRecord
    validates :title, :map, :content, presence: true
    validates :title, length: { maximum: 50 }

    def free?
      value == 0
    end

    def no_price?
      price == 0
    end
end
