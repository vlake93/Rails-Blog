class ComicsController < ApplicationController

  def index
    @comic = Comic.all
  end

  def show
  end

  def new
    @comic = Comic.new
  end

  def create
    @comic = Comic.new(comic_params)

    if @comic.save
      redirect_to comics_path
    else
      render :new
    end
  end

  def edit

  end

  def update

  end

  def delete

  end

  private

  def comic_params
    params.require(:comic).permit(:name, :body)
  end
  
end
