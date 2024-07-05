class NhanVienController < ApplicationController
  layout 'nhanvien'
  def index
    @slsp = SanPham.count
    @slkhach = Nguoidung.where(quyen_id: 2).count
    @total_orders = DonDatHang.count
    @total_revenue = DonDatHang.sum(:TongTien)
  end
end
