class VideoChannelsController < ApplicationController
  before_action :set_video_channel, only: [:show, :edit, :update, :destroy]

  def index
    @video_channels = VideoChannel.all
  end

  def show
  end

  def new
    @video_channel = VideoChannel.new
  end

  def edit
  end

  def create
    @video_channel = VideoChannel.new(video_channel_params)
    if @video_channel.save
      redirect_to @video_channel, notice: 'Video channel was successfully created.'
    else
      render :new
    end
  end

  def update
    if @video_channel.update(video_channel_params)
      redirect_to @video_channel, notice: 'Video channel was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @video_channel.destroy
    redirect_to video_channels_url, notice: 'Video channel was successfully deleted.'
  end

  private

  def set_video_channel
    @video_channel = VideoChannel.find(params[:id])
  end

  def video_channel_params
    params.require(:video_channel).permit(:name, :description)
  end
end
