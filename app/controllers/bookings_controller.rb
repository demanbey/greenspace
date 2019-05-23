class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit update destroy]

  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new
    @booking.user_id = current_user.id
    @booking.garden_id = params[:garden_id]
    @booking.save
    redirect_to garden_path(params[:garden_id])
  end

  def edit
  end

  def update
    if @booking.update(booking_params)
      redirect_to user_path(@booking) # ! double check
    else
      render :edit
    end
  end

  def destroy
    @booking.destroy
    redirect_to profile_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

end
