class QuyensController < ApplicationController
  before_action :set_quyen, only: %i[ show edit update destroy ]

  # GET /quyens or /quyens.json
  def index
    @quyens = Quyen.all
  end

  # GET /quyens/1 or /quyens/1.json
  def show
  end

  # GET /quyens/new
  def new
    @quyen = Quyen.new
  end

  # GET /quyens/1/edit
  def edit
  end

  # POST /quyens or /quyens.json
  def create
    @quyen = Quyen.new(quyen_params)

    respond_to do |format|
      if @quyen.save
        format.html { redirect_to quyen_url(@quyen), notice: "Quyen was successfully created." }
        format.json { render :show, status: :created, location: @quyen }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @quyen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quyens/1 or /quyens/1.json
  def update
    respond_to do |format|
      if @quyen.update(quyen_params)
        format.html { redirect_to quyen_url(@quyen), notice: "Quyen was successfully updated." }
        format.json { render :show, status: :ok, location: @quyen }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @quyen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quyens/1 or /quyens/1.json
  def destroy
    @quyen.destroy!

    respond_to do |format|
      format.html { redirect_to quyens_url, notice: "Quyen was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quyen
      @quyen = Quyen.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def quyen_params
      params.require(:quyen).permit(:TenQ)
    end
end
