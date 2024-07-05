class ChiTietSpController < ApplicationController
  def index
    if params[:id]
      @san_pham = SanPham.find(params[:id])
    end

    @kich_thuoc = KichThuoc.all
  end

  def CTS_them_sp
    san_pham = SanPham.find(params[:id])
    kich_thuoc_id = params[:kich_thuoc_id]
    nguoidung = Nguoidung.find(session[:nguoidung_id])

    gio_hang = GioHang.find_or_initialize_by(nguoidung: nguoidung, san_pham: san_pham, kich_thuoc_id: kich_thuoc_id)
    gio_hang.TenSP = san_pham.TenSP
    gio_hang.Gia = san_pham.Gia
    gio_hang.AnhminhHoa = san_pham.AnhMinhHoa
    gio_hang.soluong ||= 0
    gio_hang.soluong += params[:soluong].to_i
    gio_hang.thanhtien = gio_hang.Gia * gio_hang.soluong

    if gio_hang.save
      redirect_to chi_tiet_sp_index_path(id: san_pham.id), notice: 'Sản phẩm đã được thêm vào giỏ hàng.'
    else
      redirect_to chi_tiet_sp_index_path(id: san_pham.id), alert: 'Có lỗi xảy ra khi thêm sản phẩm vào giỏ hàng.'
    end
  end
end
