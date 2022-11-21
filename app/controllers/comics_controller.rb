class ComicsController < ApplicationController

  def index
    @comic = Comic.all
  end

  def show
    @comic = Comic.find(1)
    render :show
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
    @comic = Comic.find(params[:id])
    render :edit
  end

  def update
    @comic = Comic.find(params[:id])

    if @comic.update(params.require(:comic).permit(:title, :description, :due_date))
      flash[:success] = "Comic item successfully updated!"
      redirect_to comics_path(@comic)
    else
      flash.now[:error] = "Comic item update failed"
      render :edit
    end
  end

  def delete

  end

  private

  def comic_params
    params.require(:comic).permit(:name, :body)
  end
  
end
