class GioHangsController < ApplicationController
  before_action :set_gio_hang, only: %i[ show edit update destroy ]

  # GET /gio_hangs or /gio_hangs.json
  def index
    @gio_hangs = GioHang.all
  end

  # GET /gio_hangs/1 or /gio_hangs/1.json
  def show
  end

  # GET /gio_hangs/new
  def new
    @gio_hang = GioHang.new
  end

  # GET /gio_hangs/1/edit
  def edit
  end

  # POST /gio_hangs or /gio_hangs.json
  def create
    @gio_hang = GioHang.new(gio_hang_params)

    respond_to do |format|
      if @gio_hang.save
        format.html { redirect_to gio_hang_url(@gio_hang), notice: "Gio hang was successfully created." }
        format.json { render :show, status: :created, location: @gio_hang }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gio_hang.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gio_hangs/1 or /gio_hangs/1.json
  def update
    respond_to do |format|
      if @gio_hang.update(gio_hang_params)
        format.html { redirect_to gio_hang_url(@gio_hang), notice: "Gio hang was successfully updated." }
        format.json { render :show, status: :ok, location: @gio_hang }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gio_hang.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gio_hangs/1 or /gio_hangs/1.json
  def destroy
    @gio_hang.destroy!

    respond_to do |format|
      format.html { redirect_to gio_hangs_url, notice: "Gio hang was successfully destroyed." }
      format.json { head :no_content }
    end
  end

 
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gio_hang
      @gio_hang = GioHang.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gio_hang_params
      params.require(:gio_hang).permit(:nguoidung_id, :san_pham_id, :AnhminhHoa, :TenSP, :Gia, :kich_thuoc_id, :soluong, :thanhtien)
    end
end
