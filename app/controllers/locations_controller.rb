class LocationsController < ApplicationController
  before_action :authenticate_user!, :except => [:index]

  def index
    @locations = Locations.all
  end

  def new
    @location = Location.new
    @restaurant = Restaurant.find(params[:restaurant_id]).id
  end

  def create
    @location = Location.new(location_params)

    if @location.save
      redirect_to new_location_path, notice: "Location #{@locaiton.name} succesfully created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @location = Location.find(params[:id])
  end

  def destroy
    Location.destroy(params[:id])
  end

  def location_params
    params.require(:location).permit(:address, :city, :country_code, :province_code, :postal_code, :restaurant_id)
  end
end
