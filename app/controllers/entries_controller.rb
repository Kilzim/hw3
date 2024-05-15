class EntriesController < ApplicationController

  def index
    # find all Entry rows
    @entry = Entry.all
    # render entry/index view
  end

  def show
    @entry = entries.find_by({"id" => params["id"]})
    @place = places.find_by({"id" => @entry["place_id"]})
  end


  def new
    # render entry/new view with new Post form
  end

  def create
    # start with a new Entry
    @entry = Entry.new
    # assign user-entered form data to Post's columns
    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["place_id"] = params["place_id"]
    # save Entry row
    @entry.save
    # redirect user
    redirect_to "/places"
  end

end