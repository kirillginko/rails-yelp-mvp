class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show]

  def index
    @restaurants = Restaurant.all
  end

  def show; end

  def new
    @restaurant = Restaurant.new
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new, notice: "your restaurant wasn't saved"
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(
      :name, :category, :address, :phone_number
    )
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
