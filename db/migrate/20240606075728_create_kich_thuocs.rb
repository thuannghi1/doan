class CreateKichThuocs < ActiveRecord::Migration[7.1]
  def change
    create_table :kich_thuocs do |t|
      t.string :Size

      t.timestamps
    end
  end
end
