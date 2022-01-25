class BookingsController < ApplicationController
  before_action :authenticate_user!

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.place = Place.find(params[:place_id])
    redirect_to @booking.place, notice: "Your booking  has been created..."
  end

	private

  def booking_params
    params.require(:booking).permit(:date)
  end
end
