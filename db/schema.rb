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

ActiveRecord::Schema.define(:version => 20120304004527) do

  create_table "animals", :force => true do |t|
    t.string   "nomeCientifico"
    t.string   "nomePopular"
    t.string   "detalhes"
    t.integer  "item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "animals", ["item_id"], :name => "index_animals_on_item_id"

  create_table "edicaos", :force => true do |t|
    t.string   "status"
    t.string   "camposEditado"
    t.integer  "veterinario_id"
    t.integer  "item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "edicaos", ["item_id"], :name => "index_edicaos_on_item_id"
  add_index "edicaos", ["veterinario_id"], :name => "index_edicaos_on_veterinario_id"

  create_table "items", :force => true do |t|
    t.string   "satus"
    t.integer  "veterinario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "items", ["veterinario_id"], :name => "index_items_on_veterinario_id"

  create_table "racas", :force => true do |t|
    t.integer  "animal_id"
    t.string   "origem"
    t.string   "nome"
    t.string   "detalhes"
    t.integer  "item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "racas", ["animal_id"], :name => "index_racas_on_animal_id"
  add_index "racas", ["item_id"], :name => "index_racas_on_item_id"

  create_table "sintomas", :force => true do |t|
    t.string   "nome"
    t.string   "detalhes"
    t.integer  "item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sintomas", ["item_id"], :name => "index_sintomas_on_item_id"

  create_table "tratamentos", :force => true do |t|
    t.string   "nome"
    t.string   "detalhes"
    t.integer  "item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tratamentos", ["item_id"], :name => "index_tratamentos_on_item_id"

  create_table "veterinarios", :force => true do |t|
    t.string   "crmv"
    t.string   "status"
    t.string   "nome"
    t.string   "email"
    t.string   "telefone"
    t.string   "endereco"
    t.string   "CEP"
    t.string   "nota"
    t.string   "imageURL"
    t.string   "detalhes"
    t.string   "admin"
    t.string   "login"
    t.string   "pass"
    t.string   "cidade"
    t.string   "estado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
