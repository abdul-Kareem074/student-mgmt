class Book < ApplicationRecord
  belongs_to :author
  
  validates :title, :isbn, :author_id, presence: true
  validates :isbn, uniqueness: true
end
