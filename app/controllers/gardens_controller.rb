class GardensController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]
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
    @garden.user = current_user
    if @garden.save
      redirect_to garden_path(@garden) # ! double check
    else
      render 'new'
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
    params.require(:garden).permit(:name, :description, :capacity, :location, :size, :photo, :photo_cache, :category)
  end
end
