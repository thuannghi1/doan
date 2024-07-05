class SanPhamsController < ApplicationController
  before_action :set_san_pham, only: %i[ show edit update destroy ]

  # GET /san_phams or /san_phams.json
  def index
    @san_phams = SanPham.all
  end

  # GET /san_phams/1 or /san_phams/1.json
  def show
    @san_pham = SanPham.find(params[:id])
  end

  # GET /san_phams/new
  def new
    @san_pham = SanPham.new
  end

  # GET /san_phams/1/edit
  def edit
  end

  # POST /san_phams or /san_phams.json
  def create
    @san_pham = SanPham.new(san_pham_params)

    respond_to do |format|
      if @san_pham.save
        format.html { redirect_to san_pham_url(@san_pham), notice: "San pham was successfully created." }
        format.json { render :show, status: :created, location: @san_pham }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @san_pham.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /san_phams/1 or /san_phams/1.json
  def update
    respond_to do |format|
      if @san_pham.update(san_pham_params)
        format.html { redirect_to san_pham_url(@san_pham), notice: "San pham was successfully updated." }
        format.json { render :show, status: :ok, location: @san_pham }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @san_pham.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /san_phams/1 or /san_phams/1.json
  def destroy
    @san_pham.destroy!

    respond_to do |format|
      format.html { redirect_to san_phams_url, notice: "San pham was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_san_pham
      @san_pham = SanPham.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def san_pham_params
      params.require(:san_pham).permit(:TenSP, :AnhMinhHoa, :danh_muc_id, :Gia, :MoTa)
    end
end
