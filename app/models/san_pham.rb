class SanPham < ApplicationRecord

  belongs_to :danh_muc
  mount_uploader :AnhMinhHoa, AnhMinhHoaUploader

  has_many :gio_hangs
  has_one :kich_thuocs
  def self.filter_by_category(category_id)
    where(danh_muc_id: category_id)
  end
end
