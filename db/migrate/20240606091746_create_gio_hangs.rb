class CreateGioHangs < ActiveRecord::Migration[7.1]
  def change
    create_table :gio_hangs do |t|
      t.references :nguoidung, null: false, foreign_key: true
      t.references :san_pham, null: false, foreign_key: true
      t.string :AnhminhHoa
      t.string :TenSP
      t.integer :Gia
      t.references :kich_thuoc, null: false, foreign_key: true
      t.integer :soluong
      t.integer :thanhtien

      t.timestamps
    end
  end
end
