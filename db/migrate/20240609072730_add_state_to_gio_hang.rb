class AddStateToGioHang < ActiveRecord::Migration[7.1]
  def change
    add_column :gio_hangs, :state, :string
  end
end
