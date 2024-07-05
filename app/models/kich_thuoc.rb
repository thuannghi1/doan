class KichThuoc < ApplicationRecord
    belongs_to :san_pham
    has_many :gio_hangs
    
end
