class VicsController < ApplicationController
  before_action :set_vic, only: %i[ show edit update destroy ]

  # GET /vics or /vics.json
  def index
    @vics = Vic.all
  end

  # GET /vics/1 or /vics/1.json
  def show
  end

  # GET /vics/new
  def new
    @vic = Vic.new
  end

  # GET /vics/1/edit
  def edit
  end

  # POST /vics or /vics.json
  def create
    @vic = Vic.new(vic_params)

    respond_to do |format|
      if @vic.save
        format.html { redirect_to vic_url(@vic), notice: "Vic was successfully created." }
        format.json { render :show, status: :created, location: @vic }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @vic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vics/1 or /vics/1.json
  def update
    respond_to do |format|
      if @vic.update(vic_params)
        format.html { redirect_to vic_url(@vic), notice: "Vic was successfully updated." }
        format.json { render :show, status: :ok, location: @vic }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @vic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vics/1 or /vics/1.json
  def destroy
    @vic.destroy

    respond_to do |format|
      format.html { redirect_to vics_url, notice: "Vic was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vic
      @vic = Vic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vic_params
      params.require(:vic).permit(:title, :name, :about)
    end
end
