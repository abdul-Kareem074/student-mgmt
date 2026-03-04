class VideoChannel < ApplicationRecord
  has_many :channel_subscribes, dependent: :destroy
  
  validates :name, presence: true
end
