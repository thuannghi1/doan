class CreateNguoidungs < ActiveRecord::Migration[7.1]
  def change
    create_table :nguoidungs do |t|
      t.string :TenND
      t.string :Email
      t.string :DiaChi
      t.string :SDT
      t.string :MatKhau
      t.references :phai, null: false, foreign_key: true
      t.references :quyen, null: false, foreign_key: true

      t.timestamps
    end
  end
end
