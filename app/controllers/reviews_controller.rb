class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end  

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    @review.after_save :redirect_to_restaurant_path(@restaurant)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
  
  
  def review_params
    params.require(:review).permit(:content)    
    params.require(:review).permit(:rating)    
  end
  
end
