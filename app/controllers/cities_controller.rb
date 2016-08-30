class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def show
    @city = City.find params[:id]
  end

  def new
    @city = City.new
  end

def create
  city = City.create (city_params)

  redirect_to "/cities/#{city.id}"
end

  def edit
    @city = City.find params[:id]
  end

def update
  city = City.find params[:id]
  city.update(city_params)
  redirect_to city

  # redirect_to "/cities/#{city.id}"

end

def destroy
city = City.find params[:id]
city.destroy
redirect_to "/cities"
end

private

def city_params
  params.require(:city).permit(:name, :top_facts, :highlights, :image, :country_id)
  end
end
