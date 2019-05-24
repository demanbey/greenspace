class GardensController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]
  before_action :set_garden, only: %i[show edit update destroy]

  def index

    if params[:query].present? || params[:city].present?
      @gardens = Garden.search_by_keyword("#{params[:query]} #{params[:city]}")
    else
      @gardens = Garden.all
    end

    # displaying gardens based on maps displayed
    @gardens = @gardens.where.not(latitude: nil, longitude: nil)

    @markers = @gardens.map do |garden|
      {
        lat: garden.latitude,
        lng: garden.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { garden: garden })
        # image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')
      }
    end
  end

  def show
    @garden_map = Garden.where(latitude: @garden.latitude, longitude: @garden.longitude)

    @markers = @garden_map.map do |garden|
      {
        lat: garden.latitude,
        lng: garden.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { garden: garden })
        # image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')
      }
    end
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
    redirect_to gardens_path
  end

  private

  def set_garden
    @garden = Garden.find(params[:id])
  end

  def garden_params
    params.require(:garden).permit(:name, :description, :capacity, :location, :size, :photo, :photo_cache, :category)
  end
end
