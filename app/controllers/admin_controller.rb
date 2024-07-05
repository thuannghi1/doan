class AdminController < ApplicationController
    layout 'admin'
  def index
    @slsp = SanPham.count
    @slkhach = Nguoidung.where(quyen_id: 2).count
    @slnv = Nguoidung.where(quyen_id: 3).count
    @total_orders = DonDatHang.count
    @total_revenue = DonDatHang.sum(:TongTien)
  end
end
