class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @places = Place.all
  end

  def about
    @user = current_user
    @places = Place.all
  end

  def booking
  end
end
