class DangKyController < ApplicationController
  def index
    @nguoidung = Nguoidung.new
  end

  def create
    @nguoidung = Nguoidung.new(nguoidung_params)
    @nguoidung.quyen_id = 2 # Set default role

    if @nguoidung.save
      redirect_to dang_nhap_index_path, notice: 'Người dùng đã được tạo thành công.'
    else
      render :index
    end
  end

  private

  def nguoidung_params
    params.require(:nguoidung).permit(:TenND, :Email, :DiaChi, :SDT, :MatKhau, :phai_id)
  end
end