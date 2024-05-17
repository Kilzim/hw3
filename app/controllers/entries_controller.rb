class EntriesController < ApplicationController

  def index
    @entry = Entry.all
    redirect_to "/places"
  end

  def show
    @entry = Entry.find_by(id: params["id"])
    @place = Place.find_by(id: @entry.place_id)
  end

  def new
  end

  def create
    @entry = Entry.new
    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["posted_on"] = params["posted_on"]
    @entry["place_id"] = params["place_id"]
    @entry.save
    redirect_to "/places"
  end
  
  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy
    redirect_to "/places/#{@entry.place_id}"
  end

end