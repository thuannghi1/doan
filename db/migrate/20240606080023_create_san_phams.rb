class CreateSanPhams < ActiveRecord::Migration[7.1]
  def change
    create_table :san_phams do |t|
      t.string :TenSP
      t.string :AnhMinhHoa
      t.references :danh_muc, null: false, foreign_key: true
      t.string :Gia
      t.string :MoTa

      t.timestamps
    end
  end
end
