# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170503065837) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "atributos", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "atributos_proyectos", id: false, force: :cascade do |t|
    t.integer "proyecto_id", null: false
    t.integer "atributo_id", null: false
  end

  create_table "estudiantes", force: :cascade do |t|
    t.string   "carrera"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "matricula"
    t.string   "nombre"
    t.string   "apellido"
    t.string   "email"
    t.integer  "proyecto_id"
    t.index ["proyecto_id"], name: "index_estudiantes_on_proyecto_id", using: :btree
  end

  create_table "profesors", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "proyecto_id"
    t.index ["proyecto_id"], name: "index_profesors_on_proyecto_id", using: :btree
  end

  create_table "proyectos", force: :cascade do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.string   "alcance"
    t.integer  "unidades"
    t.string   "image"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.string   "tipo"
    t.string   "estatus"
    t.index ["user_id"], name: "index_proyectos_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "nomina"
    t.string   "last_name"
    t.integer  "access_level",           default: 0
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
