class EntriesController < ApplicationController

  def index
    # find all Entry rows
    @entry = Entry.all
    # render entry/index view
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
    # save Entry row
    @entry.save
    # redirect user
    redirect_to "/entries"
  end

end