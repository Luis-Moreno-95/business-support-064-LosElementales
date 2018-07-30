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

ActiveRecord::Schema.define(version: 2018_07_30_233941) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clasifications", force: :cascade do |t|
    t.string "descripcion_clasificacion"
  end

  create_table "contents", force: :cascade do |t|
    t.string "nombre_contenido"
    t.string "descripcion_contenido"
    t.string "ruta_multimedia_contenido"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "status_id"
    t.bigint "user_id"
    t.index ["status_id"], name: "index_contents_on_status_id"
    t.index ["user_id"], name: "index_contents_on_user_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "descripcion_pregunta"
    t.integer "peso_pregunta"
    t.bigint "status_id"
    t.index ["status_id"], name: "index_questions_on_status_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "nombre_rol"
    t.string "descripcion_rol"
  end

  create_table "statuses", force: :cascade do |t|
    t.string "descripcion_estado"
  end

  create_table "users", force: :cascade do |t|
    t.string "nombre_usuario"
    t.string "apellidos_ususario"
    t.date "fecha_nacimiento_usuario"
    t.string "clave_usuario"
    t.integer "puntaje_usuario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "status_id"
    t.index ["status_id"], name: "index_users_on_status_id"
  end

  add_foreign_key "contents", "statuses"
  add_foreign_key "contents", "users"
  add_foreign_key "questions", "statuses"
  add_foreign_key "users", "statuses"
end
