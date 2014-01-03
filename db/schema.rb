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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140103194121) do

  create_table "alumnos", :force => true do |t|
    t.string   "dni"
    t.string   "nombre"
    t.string   "apellidos"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "tfg_id"
    t.integer  "grupo_id"
    t.integer  "profesor_id"
  end

  create_table "alumnos_grupos", :force => true do |t|
    t.integer "alumno_id"
    t.integer "grupo_id"
  end

  create_table "grupos", :force => true do |t|
    t.string   "nombre"
    t.integer  "num_componentes"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.text     "alumno_ids"
  end

  create_table "profesors", :force => true do |t|
    t.string   "dni"
    t.string   "nombre"
    t.string   "apellidos"
    t.string   "domicilio"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "alumno_id"
  end

  create_table "profesors_tribunals", :force => true do |t|
    t.integer "tribunal_id"
    t.integer "profesor_id"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "tfgs", :force => true do |t|
    t.string   "tema"
    t.date     "fecha_comienzo"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "alumno_id"
    t.integer  "tribunal_id"
  end

  create_table "tribunals", :force => true do |t|
    t.string   "lugar_examen"
    t.integer  "num_componentes"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "tfg_id"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "password"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "remember_token"
  end

  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
