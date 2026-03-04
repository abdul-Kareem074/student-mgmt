class Author < ApplicationRecord
  has_many :books, dependent: :destroy
  has_many :posts, dependent: :destroy
  
  validates :name, :email, presence: true
  validates :email, uniqueness: true
end
