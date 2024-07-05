class PhaisController < ApplicationController
  before_action :set_phai, only: %i[ show edit update destroy ]

  # GET /phais or /phais.json
  def index
    @phais = Phai.all
  end

  # GET /phais/1 or /phais/1.json
  def show
  end

  # GET /phais/new
  def new
    @phai = Phai.new
  end

  # GET /phais/1/edit
  def edit
  end

  # POST /phais or /phais.json
  def create
    @phai = Phai.new(phai_params)

    respond_to do |format|
      if @phai.save
        format.html { redirect_to phai_url(@phai), notice: "Phai was successfully created." }
        format.json { render :show, status: :created, location: @phai }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @phai.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phais/1 or /phais/1.json
  def update
    respond_to do |format|
      if @phai.update(phai_params)
        format.html { redirect_to phai_url(@phai), notice: "Phai was successfully updated." }
        format.json { render :show, status: :ok, location: @phai }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @phai.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phais/1 or /phais/1.json
  def destroy
    @phai.destroy!

    respond_to do |format|
      format.html { redirect_to phais_url, notice: "Phai was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phai
      @phai = Phai.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def phai_params
      params.require(:phai).permit(:TenPhai)
    end
end
