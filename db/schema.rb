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

ActiveRecord::Schema.define(version: 20170725142445) do

  create_table "answers", force: :cascade do |t|
    t.integer "subtask_id"
    t.string "link"
    t.integer "like", default: 0
    t.integer "dislike", default: 0
    t.integer "report", default: 0
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "nivel", default: 0
    t.string "observacao", default: "NÃO HÁ PONTOS A SEREM COMENTADOS"
    t.index ["user_id"], name: "index_answers_on_user_id"
  end

  create_table "avaliars", force: :cascade do |t|
    t.float "nota", default: 0.0
    t.float "comunicacao", default: 0.0
    t.float "colaboracao", default: 0.0
    t.float "construcao", default: 0.0
    t.float "pcritico", default: 0.0
    t.float "compromisso", default: 0.0
    t.float "criatividade", default: 0.0
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "novato", default: 0
    t.integer "competente", default: 0
    t.integer "mestre", default: 0
    t.index ["user_id"], name: "index_avaliars_on_user_id"
  end

  create_table "habilidades", force: :cascade do |t|
    t.string "nome"
    t.integer "subtask_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "likes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "answer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "material_didaticos", force: :cascade do |t|
    t.string "titulo"
    t.string "url"
    t.integer "material_id"
    t.string "material_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nivels", force: :cascade do |t|
    t.string "posicao"
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "puclets", force: :cascade do |t|
    t.string "nome"
    t.integer "subtask_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subtask_id"], name: "index_puclets_on_subtask_id"
  end

  create_table "subtasks", force: :cascade do |t|
    t.boolean "status", default: true
    t.string "nome"
    t.text "descricao"
    t.boolean "avaliativa", default: true
    t.date "entrega"
    t.integer "task_id"
    t.string "material_type"
    t.integer "material_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["material_type", "material_id"], name: "index_subtasks_on_material_type_and_material_id"
    t.index ["task_id"], name: "index_subtasks_on_task_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.boolean "status"
    t.string "nome"
    t.text "descricao"
    t.date "abertura"
    t.date "fechamento"
    t.string "material_type"
    t.integer "material_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["material_type", "material_id"], name: "index_tasks_on_material_type_and_material_id"
  end

  create_table "tipo_habilidades", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_puclets", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role", default: 0
    t.string "name"
    t.integer "matricula"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
