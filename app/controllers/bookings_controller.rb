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
    #  if @booking.save
    #   respond_to do |format|
    #     format.html { redirect_to garden_path(@garden) }
    #     format.js  # <-- will render `app/views/reviews/create.js.erb`
    #   end
    #      else
    #   respond_to do |format|
    #     format.html { render 'gardens/show' }
    #     format.js  # <-- idem
    #   end
    # end
  end

  def edit
  end

  def update
    if @booking.update(booking_params)
      redirect_to garden_path(@booking.garden) # ! double check
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(current_user.id)
    @booking.destroy
    redirect_to profile_path(@user)
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:garden_id, :user_id, :approved, :completed)
  end
end
