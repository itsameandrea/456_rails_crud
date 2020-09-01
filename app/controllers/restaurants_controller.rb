class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :update, :destroy, :edit]

  def index
    @restaurants = Restaurant.all
  end

  def show
    # find_by (name: dsfjsdlkfj, address: fhdsjfhsdjk)
    # find_by_columnname -> find_by_id(dsfdsfsd)
    # find()
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)

    redirect_to restaurant_path(@restaurant)
  end

  def edit
  end

  def update
    @restaurant.update restaurant_params

    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    @restaurant.destroy

    redirect_to restaurants_path
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end
end
