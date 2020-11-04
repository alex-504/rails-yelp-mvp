class RestaurantController < ApplicationController
  def index
    @restaurants = Restaurants.all
  end

  def show
    @reviews = @restaurants.reviews
  end

  def new
    @restaurant = Restaurant.new
  end
  
  def create
    @restaurant =Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end
  
  private 
  
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
  
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end  
end
