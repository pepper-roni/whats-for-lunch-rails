class RestaurantsController < ApplicationController
  def index
    @restaurant = Restaurant.random
  end
end
