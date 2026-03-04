class Post < ApplicationRecord
  belongs_to :author
  
  validates :title, :content, :author_id, presence: true
end
