class CreateChannelSubscribes < ActiveRecord::Migration[7.1]
  def change
    create_table :channel_subscribes do |t|
      t.integer :user_id
      t.references :video_channel, null: false, foreign_key: true
      t.datetime :subscribed_at

      t.timestamps
    end
  end
end
