class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @places = Place.all
  end

  def about
    @user = current_user
    @requested_bookings = Booking.where(user:current_user)
    @bookings_on_my_places= Booking.where(place:current_user.places)
    @places = Place.all
  end
end
