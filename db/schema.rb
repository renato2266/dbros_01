# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100603141717) do

  create_table "ambits", :force => true do |t|
    t.string   "ambito_criminale"
    t.text     "note_ambito"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "areas", :force => true do |t|
    t.string   "area_criminale"
    t.text     "note_area"
    t.integer  "ambit_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "associations", :force => true do |t|
    t.string   "associazione_criminale"
    t.text     "note_associazione"
    t.integer  "area_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "associations_dossiers", :id => false, :force => true do |t|
    t.integer "association_id"
    t.integer "dossier_id"
  end

  create_table "dossiers", :force => true do |t|
    t.string   "numero"
    t.date     "data"
    t.text     "oggetto"
    t.text     "testo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "documento_file_name"
    t.string   "documento_content_type"
    t.integer  "documento_file_size"
    t.datetime "documento_updated_at"
  end

  create_table "dossiers_names", :id => false, :force => true do |t|
    t.integer  "name_id"
    t.integer  "dossier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dossiers_societies", :id => false, :force => true do |t|
    t.integer "society_id"
    t.integer "dossier_id"
  end

  create_table "fascicles", :force => true do |t|
    t.integer  "numero"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fascicles_names", :id => false, :force => true do |t|
    t.integer  "name_id"
    t.integer  "fascicle_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fascicles_societies", :id => false, :force => true do |t|
    t.integer  "fascicle_id"
    t.integer  "society_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "galleries", :force => true do |t|
    t.text     "description"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "galleries_names", :id => false, :force => true do |t|
    t.integer  "name_id"
    t.integer  "gallery_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "interceptions", :force => true do |t|
    t.string   "nr_protocollo"
    t.string   "nr_telefono"
    t.string   "nr_imei"
    t.string   "ambientale"
    t.string   "apparato"
    t.string   "postazione"
    t.string   "borchia"
    t.string   "P_P"
    t.string   "decreto"
    t.string   "ag"
    t.string   "ln_tim"
    t.string   "ln_vodafone"
    t.string   "ln_wind"
    t.string   "ln_sparkle"
    t.string   "wind_int"
    t.string   "ln_infostrada"
    t.string   "ln_CeW"
    t.string   "ln_eutelia"
    t.string   "ln_telecom"
    t.string   "ln_bt"
    t.string   "ln_albacom"
    t.string   "ln_h3g"
    t.date     "data_attivazione"
    t.date     "data_termine"
    t.string   "nr_cd_dvd"
    t.boolean  "cd_dvd_atti"
    t.boolean  "verbale_inizio"
    t.boolean  "verbale_fine"
    t.boolean  "brogliaccio"
    t.boolean  "deposito_cd_dvd"
    t.boolean  "deposito_gps"
    t.date     "scadenza"
    t.boolean  "cessata"
    t.string   "e_mail_appoggio"
    t.string   "rif_wind"
    t.boolean  "in_scadenza"
    t.string   "rif_vodafone"
    t.boolean  "positioning"
    t.string   "e_mail_positioning"
    t.string   "procedura"
    t.string   "operatore"
    t.string   "magistratro"
    t.date     "data_decreto"
    t.string   "alias_linea"
    t.integer  "name_id"
    t.integer  "investigation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "investigations", :force => true do |t|
    t.string   "indagine"
    t.string   "reparto"
    t.date     "data_inizio"
    t.date     "data_fine"
    t.text     "note_indagine"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "investigations_names", :id => false, :force => true do |t|
    t.integer  "name_id"
    t.integer  "investigation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "name_vehicles", :force => true do |t|
    t.integer  "name_id"
    t.integer  "vehicle_id"
    t.string   "tipo_relazione"
    t.text     "note"
    t.date     "inizio_relazione"
    t.date     "fine_relazione"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "names", :force => true do |t|
    t.string   "cognome_nome",                     :null => false
    t.string   "luogo_nascita"
    t.date     "data_nascita"
    t.string   "cod_fiscale",        :limit => 16
    t.string   "residenza"
    t.string   "via"
    t.string   "domicilio"
    t.string   "cittadinanza"
    t.string   "professione"
    t.string   "soprannome"
    t.string   "alias"
    t.text     "note_generali"
    t.integer  "association_id"
    t.integer  "ambit_id"
    t.integer  "area_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "names_societies", :id => false, :force => true do |t|
    t.integer "name_id"
    t.integer "society_id"
  end

  create_table "related_names", :id => false, :force => true do |t|
    t.integer  "related_name_id"
    t.integer  "main_name_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string "name"
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  add_index "roles_users", ["role_id"], :name => "index_roles_users_on_role_id"
  add_index "roles_users", ["user_id"], :name => "index_roles_users_on_user_id"

  create_table "societies", :force => true do |t|
    t.string   "denominazione"
    t.string   "forma_giuridica"
    t.string   "sede"
    t.string   "cf_pi"
    t.text     "descrizione"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

  create_table "vehicles", :force => true do |t|
    t.string   "tipo"
    t.string   "targa"
    t.string   "modello"
    t.string   "colore"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
