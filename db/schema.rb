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

ActiveRecord::Schema.define(version: 2018_11_17_014059) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "atracoes", force: :cascade do |t|
    t.bigint "pacote_id"
    t.text "descricao"
    t.bigint "endereco_id"
    t.date "dia_visita"
    t.integer "turistico_id"
    t.string "turistico_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["endereco_id"], name: "index_atracoes_on_endereco_id"
    t.index ["pacote_id"], name: "index_atracoes_on_pacote_id"
    t.index ["turistico_id", "turistico_type"], name: "index_atracoes_on_turistico_id_and_turistico_type"
  end

  create_table "cidades", force: :cascade do |t|
    t.string "nome"
    t.string "estado"
    t.integer "populacao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string "cpf", limit: 11
    t.string "nome"
    t.string "email"
    t.string "telefone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cpf"], name: "index_clientes_on_cpf", unique: true
  end

  create_table "compras", force: :cascade do |t|
    t.bigint "cliente_id"
    t.bigint "pacote_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_compras_on_cliente_id"
    t.index ["pacote_id"], name: "index_compras_on_pacote_id"
  end

  create_table "enderecos", force: :cascade do |t|
    t.string "logradouro"
    t.integer "numero"
    t.string "cep"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hoteis", force: :cascade do |t|
    t.string "nome"
    t.string "categoria"
    t.bigint "endereco_id"
    t.bigint "cidade_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cidade_id"], name: "index_hoteis_on_cidade_id"
    t.index ["endereco_id"], name: "index_hoteis_on_endereco_id"
  end

  create_table "igrejas", force: :cascade do |t|
    t.date "data_construcao"
    t.string "estilo_construcao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pacotes", force: :cascade do |t|
    t.money "valor", scale: 2
    t.date "data_inicio"
    t.date "data_fim"
    t.bigint "cidade_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cidade_id"], name: "index_pacotes_on_cidade_id"
  end

  create_table "quartos", force: :cascade do |t|
    t.integer "numero"
    t.bigint "tipo_de_quarto_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tipo_de_quarto_id"], name: "index_quartos_on_tipo_de_quarto_id"
  end

  create_table "restaurantes", force: :cascade do |t|
    t.string "nome"
    t.string "categoria"
    t.bigint "endereco_id"
    t.bigint "cidade_id"
    t.bigint "hotel_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cidade_id"], name: "index_restaurantes_on_cidade_id"
    t.index ["endereco_id"], name: "index_restaurantes_on_endereco_id"
    t.index ["hotel_id"], name: "index_restaurantes_on_hotel_id"
  end

  create_table "tipo_de_quartos", force: :cascade do |t|
    t.string "nome"
    t.money "valor_diaria", scale: 2
    t.bigint "hotel_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hotel_id"], name: "index_tipo_de_quartos_on_hotel_id"
  end

  add_foreign_key "atracoes", "enderecos"
  add_foreign_key "atracoes", "pacotes"
  add_foreign_key "compras", "clientes"
  add_foreign_key "compras", "pacotes"
  add_foreign_key "hoteis", "cidades"
  add_foreign_key "hoteis", "enderecos"
  add_foreign_key "pacotes", "cidades"
  add_foreign_key "quartos", "tipo_de_quartos"
  add_foreign_key "restaurantes", "cidades"
  add_foreign_key "restaurantes", "enderecos"
  add_foreign_key "restaurantes", "hoteis"
  add_foreign_key "tipo_de_quartos", "hoteis"
end
