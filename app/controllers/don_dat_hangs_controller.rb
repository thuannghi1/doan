class DonDatHangsController < ApplicationController
  layout 'khachhang'
  before_action :set_don_dat_hang, only: [ :show, :edit, :update, :destroy ]
  before_action :set_layout
  # GET /don_dat_hangs or /don_dat_hangs.json
  def index
    if Nguoidung.find(session[:nguoidung_id]).quyen_id == 1
      @don_dat_hangs = DonDatHang.all
    elsif Nguoidung.find(session[:nguoidung_id]).quyen_id == 3
      @don_dat_hangs = DonDatHang.all
    elsif Nguoidung.find(session[:nguoidung_id]).quyen_id == 2
      @don_dat_hangs = DonDatHang.where(nguoidung_id: session[:nguoidung_id])
    end
  end

  # GET /don_dat_hangs/1 or /don_dat_hangs/1.json
  def show
  end

  # GET /don_dat_hangs/new
  def new
    @don_dat_hang = DonDatHang.new
  end

  # GET /don_dat_hangs/1/edit
  def edit
  end

  # POST /don_dat_hangs or /don_dat_hangs.json
  def create
    @don_dat_hang = DonDatHang.new(don_dat_hang_params)

    if @don_dat_hang.save
      clear_cart(@don_dat_hang.nguoidung_id)
      flash[:notice] = 'Đặt hàng thành công'
      redirect_to home_index_path
    else
      flash[:alert] = 'Đặt hàng không thành công'
      render :new
    end
  end

  # PATCH/PUT /don_dat_hangs/1 or /don_dat_hangs/1.json
  def update
    respond_to do |format|
      if @don_dat_hang.update(don_dat_hang_params)
        format.html { redirect_to don_dat_hang_url(@don_dat_hang), notice: "Don dat hang was successfully updated." }
        format.json { render :show, status: :ok, location: @don_dat_hang }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @don_dat_hang.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /don_dat_hangs/1 or /don_dat_hangs/1.json
  def destroy
    @don_dat_hang.destroy!

    respond_to do |format|
      format.html { redirect_to don_dat_hangs_url, notice: "Don dat hang was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_don_dat_hang
      @don_dat_hang = DonDatHang.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def don_dat_hang_params
      params.require(:don_dat_hang).permit(:nguoidung_id, :TenND, :Email, :SDT, :DiaChi, :ChiTiet, :TongTien, :NgayDat)
    end

    def clear_cart(nguoidung_id)
      GioHang.where(nguoidung_id: nguoidung_id).destroy_all
    end

    def set_layout
      case session[:nguoidung_id] && Nguoidung.find(session[:nguoidung_id]).quyen_id
      when 1
        self.class.layout 'admin'
      when 2
        self.class.layout 'khachhang'
      when 3
        self.class.layout 'nhanvien'
      end
    end
end
