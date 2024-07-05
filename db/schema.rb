# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_06_11_090838) do
  create_table "dang_kies", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "danh_mucs", force: :cascade do |t|
    t.string "TenDM"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "don_dat_hangs", force: :cascade do |t|
    t.integer "nguoidung_id", null: false
    t.string "TenND"
    t.string "Email"
    t.integer "SDT"
    t.string "ChiTiet"
    t.string "DiaChi"
    t.integer "TongTien"
    t.date "NgayDat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nguoidung_id"], name: "index_don_dat_hangs_on_nguoidung_id"
  end

  create_table "gio_hangs", force: :cascade do |t|
    t.integer "nguoidung_id", null: false
    t.integer "san_pham_id", null: false
    t.string "AnhminhHoa"
    t.string "TenSP"
    t.integer "Gia"
    t.integer "kich_thuoc_id", null: false
    t.integer "soluong"
    t.integer "thanhtien"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "state"
    t.index ["kich_thuoc_id"], name: "index_gio_hangs_on_kich_thuoc_id"
    t.index ["nguoidung_id"], name: "index_gio_hangs_on_nguoidung_id"
    t.index ["san_pham_id"], name: "index_gio_hangs_on_san_pham_id"
  end

  create_table "kich_thuocs", force: :cascade do |t|
    t.string "Size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nguoidungs", force: :cascade do |t|
    t.string "TenND"
    t.string "Email"
    t.string "DiaChi"
    t.string "SDT"
    t.string "MatKhau"
    t.integer "phai_id", null: false
    t.integer "quyen_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["phai_id"], name: "index_nguoidungs_on_phai_id"
    t.index ["quyen_id"], name: "index_nguoidungs_on_quyen_id"
  end

  create_table "phais", force: :cascade do |t|
    t.string "TenPhai"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quyens", force: :cascade do |t|
    t.string "TenQ"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "san_phams", force: :cascade do |t|
    t.string "TenSP"
    t.string "AnhMinhHoa"
    t.integer "danh_muc_id", null: false
    t.string "Gia"
    t.string "MoTa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["danh_muc_id"], name: "index_san_phams_on_danh_muc_id"
  end

  add_foreign_key "don_dat_hangs", "nguoidungs"
  add_foreign_key "gio_hangs", "kich_thuocs"
  add_foreign_key "gio_hangs", "nguoidungs"
  add_foreign_key "gio_hangs", "san_phams"
  add_foreign_key "nguoidungs", "phais"
  add_foreign_key "nguoidungs", "quyens"
  add_foreign_key "san_phams", "danh_mucs"
end
