class BookingsController < ApplicationController
	before_action :authenticate_user!

	# def create
	# 	@booking = current_user.bookings.create(booking_params)

	# 	redirect_to @booking.place, notice: "Your booking  has been created..."
	# end

  def create
    @booking = Booking.new(booking_params)
    redirect_to @booking.place, notice: "Your booking  has been created..."
  end


	private
		def booking_params
			params.require(:booking).permit(:date)
		end
end
