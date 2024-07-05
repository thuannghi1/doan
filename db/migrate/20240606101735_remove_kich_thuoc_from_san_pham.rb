class RemoveKichThuocFromSanPham < ActiveRecord::Migration[7.1]
  def change
    remove_reference :san_phams, :kich_thuoc, null: false, foreign_key: true
  end
end
