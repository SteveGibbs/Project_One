class ToursController < ApplicationController
  def index
    @tours = Tour.all
  end

  def show
    @tour = Tour.find params[:id]
  end

  def new
    @tour = Tour.new
  end

  def create
    tour = Tour.create tour_params
    redirect_to "/tours/#{tour.id}"
  end

  def edit
    @tour = Tour.find params[:id]
  end

  def update
    tour = Tour.find params[:id]
    tour.update(tour_params)
    redirect_to tour
    end

  def destroy
    tour = Tour.find params[:id]
    tour.destroy
    redirect_to '/tours'
  end

  private

  def tour_params
    params.require(:tour).permit(:name, :theme, :duration, :top_facts, :highlights, :price, :image, :start_date, :end_date)
  end
end
