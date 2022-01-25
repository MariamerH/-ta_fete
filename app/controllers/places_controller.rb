class PlacesController < ApplicationController
  before_action :set_place, except:[ :index, :new,  :create]
  before_action :authenticate_user!, except: [:show]

  def index
    @places = Place.all
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)
    @user = current_user
    @place.user = @user
    if @place.save
      redirect_to place_path(@place), notice: "Saved Success"
    else
      flash[:alert] = @place.errors.full_messages
      render :new
    end
  end

  def show
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
    params.required(:place).permit(:name, :address, :description, :price_per_day, :capacity )
  end
end
