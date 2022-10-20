class RestaurantsController < ApplicationController
  def index
    @restaurant = Restaurant.order(Arel.sql('RANDOM()')).first
  end
end
