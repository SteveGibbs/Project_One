class PagesController < ApplicationController
  def home
  end

  def about
  end

  def faq
  end

  def results
    if params[:country_id].present?
    @country = params[:country_id]
      redirect_to country_path(@country)
    end
    @city = params[:city_id]
    @tour = params[:tour_id]

    # This is where get requests from our pages _form will get sent. It will need to handle the logic of returning records based on the queries in params.
  end
end
