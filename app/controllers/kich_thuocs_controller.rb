class KichThuocsController < ApplicationController
  before_action :set_kich_thuoc, only: %i[ show edit update destroy ]

  # GET /kich_thuocs or /kich_thuocs.json
  def index
    @kich_thuocs = KichThuoc.all
  end

  # GET /kich_thuocs/1 or /kich_thuocs/1.json
  def show
  end

  # GET /kich_thuocs/new
  def new
    @kich_thuoc = KichThuoc.new
  end

  # GET /kich_thuocs/1/edit
  def edit
  end

  # POST /kich_thuocs or /kich_thuocs.json
  def create
    @kich_thuoc = KichThuoc.new(kich_thuoc_params)

    respond_to do |format|
      if @kich_thuoc.save
        format.html { redirect_to kich_thuoc_url(@kich_thuoc), notice: "Kich thuoc was successfully created." }
        format.json { render :show, status: :created, location: @kich_thuoc }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @kich_thuoc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kich_thuocs/1 or /kich_thuocs/1.json
  def update
    respond_to do |format|
      if @kich_thuoc.update(kich_thuoc_params)
        format.html { redirect_to kich_thuoc_url(@kich_thuoc), notice: "Kich thuoc was successfully updated." }
        format.json { render :show, status: :ok, location: @kich_thuoc }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @kich_thuoc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kich_thuocs/1 or /kich_thuocs/1.json
  def destroy
    @kich_thuoc.destroy!

    respond_to do |format|
      format.html { redirect_to kich_thuocs_url, notice: "Kich thuoc was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kich_thuoc
      @kich_thuoc = KichThuoc.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def kich_thuoc_params
      params.require(:kich_thuoc).permit(:Size)
    end
end
