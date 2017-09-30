class AttractionsController < ApplicationController

  def new
    @attraction = Attraction.new
  end

  def create
    @attraction = Attraction.create(attraction_params)
    redirect_to attraction_path(@attraction)
  end

  def index
    @user = User.find(session[:user_id])
    @attractions = Attraction.all
  end

  def show
    @attraction = Attraction.find_by_id(params[:id])
    @ride = Ride.new
    @user = User.find(session[:user_id])
  end

  def edit
    @attraction = Attraction.find_by_id(params[:id])
  end
  
  private

  def attraction_params
    params.require(:attraction).permit(:name, :min_height, :tickets, :nausea_rating, :happiness_rating)
  end
end
