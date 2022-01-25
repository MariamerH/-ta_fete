class BookingsController < ApplicationController
	before_action :authenticate_user!

	def create
		@booking = current_user.bookings.create(booking_params)

		redirect_to @booking.place, notice: "Your reservation has been created..."
	end

	private
		def reservation_params
			params.require(:booking).permit(:start_date, :end_date, :price, :total, :room_id)
		end
end
