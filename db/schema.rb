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

ActiveRecord::Schema.define(:version => 20120305233056) do

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

  create_table "especialidades", :force => true do |t|
    t.string   "nome"
    t.string   "detalhes"
    t.integer  "item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "especialidades", ["item_id"], :name => "index_especialidades_on_item_id"

  create_table "itemlinks", :force => true do |t|
    t.string   "status"
    t.integer  "veterinario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "itemlinks", ["veterinario_id"], :name => "index_itemlinks_on_veterinario_id"

  create_table "items", :force => true do |t|
    t.string   "satus"
    t.integer  "veterinario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "items", ["veterinario_id"], :name => "index_items_on_veterinario_id"

  create_table "pathoxracas", :force => true do |t|
    t.integer  "itemlink_id"
    t.integer  "patologia_id"
    t.integer  "raca_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pathoxracas", ["itemlink_id"], :name => "index_pathoxracas_on_itemlink_id"
  add_index "pathoxracas", ["patologia_id"], :name => "index_pathoxracas_on_patologia_id"
  add_index "pathoxracas", ["raca_id"], :name => "index_pathoxracas_on_raca_id"

  create_table "pathoxsintomas", :force => true do |t|
    t.integer  "itemlink_id"
    t.integer  "patologia_id"
    t.integer  "sintoma_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pathoxsintomas", ["itemlink_id"], :name => "index_pathoxsintomas_on_itemlink_id"
  add_index "pathoxsintomas", ["patologia_id"], :name => "index_pathoxsintomas_on_patologia_id"
  add_index "pathoxsintomas", ["sintoma_id"], :name => "index_pathoxsintomas_on_sintoma_id"

  create_table "pathoxtratamentos", :force => true do |t|
    t.integer  "itemlink_id"
    t.integer  "patologia_id"
    t.integer  "tratamento_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pathoxtratamentos", ["itemlink_id"], :name => "index_pathoxtratamentos_on_itemlink_id"
  add_index "pathoxtratamentos", ["patologia_id"], :name => "index_pathoxtratamentos_on_patologia_id"
  add_index "pathoxtratamentos", ["tratamento_id"], :name => "index_pathoxtratamentos_on_tratamento_id"

  create_table "patologia", :force => true do |t|
    t.string   "nomepopular"
    t.string   "nome"
    t.string   "detalhes"
    t.integer  "item_id"
    t.integer  "especialidade_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "patologia", ["especialidade_id"], :name => "index_patologia_on_especialidade_id"
  add_index "patologia", ["item_id"], :name => "index_patologia_on_item_id"

  create_table "patologias", :force => true do |t|
    t.string   "nome"
    t.string   "nomePopular"
    t.string   "detalhes"
    t.integer  "especialidade_id"
    t.integer  "item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "patologias", ["especialidade_id"], :name => "index_patologias_on_especialidade_id"
  add_index "patologias", ["item_id"], :name => "index_patologias_on_item_id"

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

  create_table "relatos", :force => true do |t|
    t.string   "detalhes"
    t.integer  "item_id"
    t.integer  "patologia_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relatos", ["item_id"], :name => "index_relatos_on_item_id"
  add_index "relatos", ["patologia_id"], :name => "index_relatos_on_patologia_id"

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

  create_table "vetxespecialidades", :force => true do |t|
    t.integer  "itemlink_id"
    t.integer  "veterinario_id"
    t.integer  "especialidade_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "vetxespecialidades", ["especialidade_id"], :name => "index_vetxespecialidades_on_especialidade_id"
  add_index "vetxespecialidades", ["itemlink_id"], :name => "index_vetxespecialidades_on_itemlink_id"
  add_index "vetxespecialidades", ["veterinario_id"], :name => "index_vetxespecialidades_on_veterinario_id"

end
