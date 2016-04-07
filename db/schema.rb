# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160407150141) do

  create_table "aulas", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departamentos", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "derivacions", force: :cascade do |t|
    t.string   "observacion"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "departamento_id"
    t.integer  "entrevista_id"
  end

  add_index "derivacions", ["departamento_id"], name: "index_derivacions_on_departamento_id"
  add_index "derivacions", ["entrevista_id"], name: "index_derivacions_on_entrevista_id"

  create_table "entrevista", force: :cascade do |t|
    t.boolean  "asistencia"
    t.boolean  "tipo"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "horario_id"
    t.integer  "usuario_id"
    t.integer  "motivo_id"
    t.integer  "aula_id"
    t.integer  "derivacion_id"
  end

  add_index "entrevista", ["aula_id"], name: "index_entrevista_on_aula_id"
  add_index "entrevista", ["derivacion_id"], name: "index_entrevista_on_derivacion_id"
  add_index "entrevista", ["horario_id"], name: "index_entrevista_on_horario_id"
  add_index "entrevista", ["motivo_id"], name: "index_entrevista_on_motivo_id"
  add_index "entrevista", ["usuario_id"], name: "index_entrevista_on_usuario_id"

  create_table "horarios", force: :cascade do |t|
    t.date     "fecha"
    t.time     "horario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "usuario_id"
  end

  add_index "horarios", ["usuario_id"], name: "index_horarios_on_usuario_id"

  create_table "motivos", force: :cascade do |t|
    t.string   "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.integer  "numero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
