class GardensController < ApplicationController
  before_action :set_garden, only: %i[show edit update destroy]

  def index
    @gardens = Garden.all
  end

  def show
  end

  def new
    @garden = Garden.new
  end

  def create
    @garden = Garden.new(garden_params)
    if @garden.save
      redirect_to root_path # ! double check
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @garden.update(garden_params)
      redirect_to garden_path(@garden) # ! double check
    else
      render :edit
    end
  end

  def destroy
    @garden.destroy
  end

  private

  def set_garden
    @garden = Garden.find(params[:id])
  end

  def garden_params
    params.require(:garden).permit(:name, :description, :capacity, :location, :size, :photo, :type)
  end
end
