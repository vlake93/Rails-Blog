class BlogAppsController < ApplicationController
  before_action :set_blog_app, only: %i[ show edit update destroy ]

  # GET /blog_apps or /blog_apps.json
  def index
    @blog_apps = BlogApp.all
  end

  # GET /blog_apps/1 or /blog_apps/1.json
  def show
  end

  # GET /blog_apps/new
  def new
    @blog_app = BlogApp.new
  end

  # GET /blog_apps/1/edit
  def edit
  end

  # POST /blog_apps or /blog_apps.json
  def create
    @blog_app = BlogApp.new(blog_app_params)

    respond_to do |format|
      if @blog_app.save
        format.html { redirect_to blog_app_url(@blog_app), notice: "Blog app was successfully created." }
        format.json { render :show, status: :created, location: @blog_app }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @blog_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blog_apps/1 or /blog_apps/1.json
  def update
    respond_to do |format|
      if @blog_app.update(blog_app_params)
        format.html { redirect_to blog_app_url(@blog_app), notice: "Blog app was successfully updated." }
        format.json { render :show, status: :ok, location: @blog_app }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @blog_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog_apps/1 or /blog_apps/1.json
  def destroy
    @blog_app.destroy

    respond_to do |format|
      format.html { redirect_to blog_apps_url, notice: "Blog app was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog_app
      @blog_app = BlogApp.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blog_app_params
      params.require(:blog_app).permit(:title, :name, :about)
    end
end
