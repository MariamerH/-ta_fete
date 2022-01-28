class BookingsController < ApplicationController
  before_action :authenticate_user!


  def new
    @booking = Booking.new
    @place = Place.find(params[:place_id])
    authorize @booking
    @user = current_user
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @place = Place.find(params[:place_id])
    @booking.place = @place
    @booking.save
    if @booking.save
      redirect_to '/booking', notice: "Tu reserva ha sido creada"
    else
      flash[:alert] = @booking.errors.full_messages
      render 'places/show'
    end
  end

	private

  def booking_params
    params.require(:booking).permit(:date)
  end
end
