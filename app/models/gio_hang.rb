class GioHang < ApplicationRecord
  belongs_to :nguoidung
  belongs_to :san_pham
  belongs_to :kich_thuoc
  enum state: { dang_xu_ly: 0, cho_xac_nhan: 1, da_giao: 2 }
end
