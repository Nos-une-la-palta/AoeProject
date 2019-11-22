class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  has_rich_text :content
end
