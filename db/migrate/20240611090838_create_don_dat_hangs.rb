class CreateDonDatHangs < ActiveRecord::Migration[7.1]
  def change
    create_table :don_dat_hangs do |t|
      t.references :nguoidung, null: false, foreign_key: true
      t.string :TenND
      t.string :Email
      t.integer :SDT
      t.string :ChiTiet
      t.string :DiaChi
      t.integer :TongTien
      t.date :NgayDat

      t.timestamps
    end
  end
end
