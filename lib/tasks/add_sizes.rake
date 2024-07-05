namespace :db do
    desc "Add sizes to kich_thuocs table"
    task add_sizes: :environment do
      kich_thuocs = ["M", "L", "XL", "XXL"]
  
      kich_thuocs.each do |size|
        KichThuoc.create!(Size: size)
      end
    end
  end
  