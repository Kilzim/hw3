class PlacesController < ApplicationController

  def index
    @place = Place.all
  end

  def show
    params["id"]
    @place = Place.find_by ({"id" => params["id"]})
    @entries = Entry.where({"place_id" => @place["id"]})
  end

  def new

  end

  def create
    @place = Place.new
    @place["name"] = params["name"]
    @place.save 
    redirect_to "/places"
  end


end