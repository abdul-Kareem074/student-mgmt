class ChannelSubscribesController < ApplicationController
  before_action :set_channel_subscribe, only: [:show, :destroy]

  def index
    @channel_subscribes = ChannelSubscribe.all
  end

  def show
  end

  def new
    @channel_subscribe = ChannelSubscribe.new
    @channels = VideoChannel.all
  end

  def create
    @channel_subscribe = ChannelSubscribe.new(channel_subscribe_params)
    @channel_subscribe.subscribed_at = Time.current
    if @channel_subscribe.save
      redirect_to @channel_subscribe, notice: 'Subscription was successfully created.'
    else
      @channels = VideoChannel.all
      render :new
    end
  end

  def destroy
    @channel_subscribe.destroy
    redirect_to channel_subscribes_url, notice: 'Subscription was successfully deleted.'
  end

  private

  def set_channel_subscribe
    @channel_subscribe = ChannelSubscribe.find(params[:id])
  end

  def channel_subscribe_params
    params.require(:channel_subscribe).permit(:user_id, :video_channel_id)
  end
end
