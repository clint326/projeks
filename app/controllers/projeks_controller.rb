class ProjeksController < ApplicationController
  before_action :set_projek, only: %i[ show edit update destroy ]

  # GET /projeks or /projeks.json
  def index
    @projeks = Projek.all
  end

  # GET /projeks/1 or /projeks/1.json
  def show
  end

  # GET /projeks/new
  def new
    @projek = Projek.new
  end

  # GET /projeks/1/edit
  def edit
  end

  # POST /projeks or /projeks.json
  def create
    @projek = Projek.new(projek_params)

    respond_to do |format|
      if @projek.save
        format.html { redirect_to projek_url(@projek), notice: "Projek was successfully created." }
        format.json { render :show, status: :created, location: @projek }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @projek.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projeks/1 or /projeks/1.json
  def update
    respond_to do |format|
      if @projek.update(projek_params)
        format.html { redirect_to projek_url(@projek), notice: "Projek was successfully updated." }
        format.json { render :show, status: :ok, location: @projek }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @projek.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projeks/1 or /projeks/1.json
  def destroy
    @projek.destroy

    respond_to do |format|
      format.html { redirect_to projeks_url, notice: "Projek was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projek
      @projek = Projek.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def projek_params
      params.require(:projek).permit(:name, :status, :notes)
    end
end
