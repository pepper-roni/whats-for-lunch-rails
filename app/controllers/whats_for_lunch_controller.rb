class WhatsForLunchController < ApplicationController
  def index
    @random_restaurant = Restaurant.random
  end
end
