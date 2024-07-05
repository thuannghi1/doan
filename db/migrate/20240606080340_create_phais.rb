class CreatePhais < ActiveRecord::Migration[7.1]
  def change
    create_table :phais do |t|
      t.string :TenPhai

      t.timestamps
    end
  end
end
