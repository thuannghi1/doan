class Nguoidung < ApplicationRecord
  belongs_to :phai
  belongs_to :quyen
  has_many :gio_hangs

end
