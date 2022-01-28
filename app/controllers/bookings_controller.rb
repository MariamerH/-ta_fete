class BookingsController < ApplicationController
  before_action :authenticate_user!

  def new
    @booking = Booking.new
    @place = Place.find(params[:place_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.place = Place.find(params[:place_id])
    @booking.save
    if @booking.save
      redirect_to @booking.place, notice: "Tu reserva ha sido creada"
    else
      flash[:alert] = @booking.errors.full_messages
      redirect_to place_path(Place.find(params[:place_id]))
    end
  end

	private

  def booking_params
    params.require(:booking).permit(:date)
  end
end
