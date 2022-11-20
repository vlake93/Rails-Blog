class ComicsController < ApplicationController

  def index
    @comic = Comic.all
  end

  def new
    @comic = Comics.new
  end

  def create
    @comic = Comics.new
    @comic.name = params[:name]
    @comic.body = params[:body]

    if @comic.save
      redirect_to comics_path
      else
        render:new
      end
  end

  def edit

  end

  def update

  end

  def delete

  end
end
