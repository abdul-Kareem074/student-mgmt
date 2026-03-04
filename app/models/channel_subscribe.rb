class ChannelSubscribe < ApplicationRecord
  belongs_to :video_channel
  
  validates :user_id, :video_channel_id, presence: true
end
