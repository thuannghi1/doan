namespace :db do
    desc "Add sizes to kich_thuocs table"
    task add_sizes: :environment do
      sizes = ["M", "L", "XL", "XXL"]
      
      sizes.each do |size|
        KichThuoc.create!(name: Size)
      end
    end
  end
  