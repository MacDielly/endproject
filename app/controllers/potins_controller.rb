class PotinsController < ApplicationController
  before_action :set_potin, only: %i[ show edit update destroy ]

  # GET /potins or /potins.json
  def index
    @potins = Potin.all
  end

  # GET /potins/1 or /potins/1.json
  def show
  end

  # GET /potins/new
  def new
    @potin = Potin.new
  end

  # GET /potins/1/edit
  def edit
  end

  # POST /potins or /potins.json
  def create
    @potin = Potin.new(potin_params)

    respond_to do |format|
      if @potin.save
        format.html { redirect_to potin_url(@potin), notice: "Potin was successfully created." }
        format.json { render :show, status: :created, location: @potin }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @potin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /potins/1 or /potins/1.json
  def update
    respond_to do |format|
      if @potin.update(potin_params)
        format.html { redirect_to potin_url(@potin), notice: "Potin was successfully updated." }
        format.json { render :show, status: :ok, location: @potin }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @potin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /potins/1 or /potins/1.json
  def destroy
    @potin.destroy

    respond_to do |format|
      format.html { redirect_to potins_url, notice: "Potin was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_potin
      @potin = Potin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def potin_params
      params.require(:potin).permit(:titre, :contenu, :auteur)
    end
end
