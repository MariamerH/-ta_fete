class PlacesController < ApplicationController
  before_action :set_place, except:[ :index, :new, :create]
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
      redirect_to place_path(@place), notice: "Sitio creado exitosamente"
    else
      flash[:alert] = @place.errors.full_messages
      render :new
    end
  end

  def show
  end

  def update
    if @place.update(place_params)
      redirect_to place_path(@place), notice: "Sitio actualizado exitosamente"
    else
      flash[:alert] = @place.errors.full_messages
    end
  end

  def destroy
    @place.destroy

    redirect_to places_path, notice: "Sitio eliminado"
  end

  private

  def set_place
    @place = Place.find(params[:id])
  end

  def place_params
    params.required(:place).permit(:name, :address, :description, :price_per_day, :capacity, :photo)
  end
end
