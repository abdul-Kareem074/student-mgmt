class PartsController < ApplicationController
  before_action :set_part, only: [:show, :edit, :update, :destroy]

  def index
    @parts = Part.all
  end

  def show
  end

  def new
    @part = Part.new
    @assemblies = Assembly.all
  end

  def edit
    @assemblies = Assembly.all
  end

  def create
    @part = Part.new(part_params)
    if @part.save
      redirect_to @part, notice: 'Part was successfully created.'
    else
      @assemblies = Assembly.all
      render :new
    end
  end

  def update
    if @part.update(part_params)
      redirect_to @part, notice: 'Part was successfully updated.'
    else
      @assemblies = Assembly.all
      render :edit
    end
  end

  def destroy
    @part.destroy
    redirect_to parts_url, notice: 'Part was successfully deleted.'
  end

  private

  def set_part
    @part = Part.find(params[:id])
  end

  def part_params
    params.require(:part).permit(:name, assembly_ids: [])
  end
end
