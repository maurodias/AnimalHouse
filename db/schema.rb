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

ActiveRecord::Schema.define(:version => 20120214133812) do

  create_table "animals", :force => true do |t|
    t.string   "nome"
    t.string   "nomePopular"
    t.string   "status"
    t.string   "dtModificacao"
    t.integer  "veterinario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "animals", ["veterinario_id"], :name => "index_animals_on_veterinario_id"

  create_table "veterinarios", :force => true do |t|
    t.string   "crmv"
    t.string   "status"
    t.string   "telefone"
    t.string   "email"
    t.string   "endereco"
    t.string   "cep"
    t.string   "nota"
    t.string   "dtModificacao"
    t.string   "login"
    t.string   "pass"
    t.string   "fotoperfil"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
