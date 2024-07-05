class HomeController < ApplicationController
  layout 'thanhcongcu_sapxep'
  def index
    if params[:category].present?
      @san_phams = SanPham.filter_by_category(params[:category])
    else
      @san_phams = SanPham.all
    end

    @danh_mucs = DanhMuc.all

    case params[:sort]
    when 'a-z'
      @san_phams = @san_phams.order(:TenSP)
    when 'caodenthap'
      @san_phams = @san_phams.order(Gia: :desc)
    when 'thapdencao'
      @san_phams = @san_phams.order(Gia: :asc)
    end

  end
end
