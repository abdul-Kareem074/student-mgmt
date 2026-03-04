class AssembliesController < ApplicationController
  before_action :set_assembly, only: [:show, :edit, :update, :destroy]

  def index
    @assemblies = Assembly.all
  end

  def show
  end

  def new
    @assembly = Assembly.new
    @parts = Part.all
  end

  def edit
    @parts = Part.all
  end

  def create
    @assembly = Assembly.new(assembly_params)
    if @assembly.save
      redirect_to @assembly, notice: 'Assembly was successfully created.'
    else
      @parts = Part.all
      render :new
    end
  end

  def update
    if @assembly.update(assembly_params)
      redirect_to @assembly, notice: 'Assembly was successfully updated.'
    else
      @parts = Part.all
      render :edit
    end
  end

  def destroy
    @assembly.destroy
    redirect_to assemblies_url, notice: 'Assembly was successfully deleted.'
  end

  private

  def set_assembly
    @assembly = Assembly.find(params[:id])
  end

  def assembly_params
    params.require(:assembly).permit(:name, :description, part_ids: [])
  end
end
