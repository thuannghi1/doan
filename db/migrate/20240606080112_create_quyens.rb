class CreateQuyens < ActiveRecord::Migration[7.1]
  def change
    create_table :quyens do |t|
      t.string :TenQ

      t.timestamps
    end
  end
end
