class PlacesController < ApplicationController
  before_action :set_place,except:[:index, :new,  :create]
  before_action :authenticate_user!, except: [:show]

  def index
    @places = current_user.places
  end

  def new
    @place = current_user.places.build
  end

  def create
    @place = current_user.places.build(places_params)
    if @place.save
      redirect_to place_path(@place), notice: "Saved Success"
    else
      flash[:alert] = @place.errors.full_messages
      render :new
    end
  end

  def show
    @photos = @place.photos
  end

  def update
    if @place.update(place_params)
      flash[:notice] = "Saved..."
    else
      flash[:alert] = @place.errors.full_messages
    end
  end

  private

  def set_place
    @place = Place.find(params[:id])
  end

  def place_params
    params.required(:place).permit(:home_type,:room_type,:accommodate,:bed_room,:bath_room,:listing_name,:summary,:address,:is_kitchen,:is_air,:is_internet,:is_tv,:price,:active)
  end
end
