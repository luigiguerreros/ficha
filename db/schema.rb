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

ActiveRecord::Schema.define(version: 20160820235758) do

  create_table "administrativas", force: :cascade do |t|
    t.string   "ps_administrativa"
    t.string   "velocidad"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "antenapuntos", force: :cascade do |t|
    t.string   "tipo"
    t.string   "nombre"
    t.string   "ps"
    t.string   "oc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "campanas", force: :cascade do |t|
    t.string   "nombre_camapana"
    t.string   "descripcion"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "caracteristicadeco1s", force: :cascade do |t|
    t.string   "pack"
    t.string   "tipo_pago"
    t.decimal  "costo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "caracteristicadeco2s", force: :cascade do |t|
    t.string   "pack"
    t.string   "tipo_pago"
    t.decimal  "costo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "caracteristicamodems", force: :cascade do |t|
    t.string   "pack"
    t.string   "tipo_pago"
    t.decimal  "costo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "caracteristicatelefonos", force: :cascade do |t|
    t.string   "pack"
    t.string   "tipo_pago"
    t.decimal  "costo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deco1s", force: :cascade do |t|
    t.string   "tipo"
    t.string   "ps"
    t.string   "oc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deco2s", force: :cascade do |t|
    t.string   "tipo"
    t.string   "ps"
    t.string   "oc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "descuentos", force: :cascade do |t|
    t.string   "ps_descuento"
    t.string   "descripcion"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "gestions", force: :cascade do |t|
    t.string   "codigo"
    t.integer  "origen_id"
    t.integer  "campana_id"
    t.integer  "zonal_id"
    t.integer  "tipo_id"
    t.integer  "subtipo_id"
    t.integer  "paquete_id"
    t.integer  "linea_id"
    t.integer  "internet_id"
    t.integer  "administrativa_id"
    t.integer  "tecno_id"
    t.integer  "modopago_id"
    t.decimal  "monto_instalacion"
    t.integer  "promocion_id"
    t.integer  "descuento_id"
    t.string   "equipamiento"
    t.integer  "telefono_id"
    t.integer  "caracteristicastelefono_id"
    t.integer  "modem_id"
    t.integer  "caracteristicamodem_id"
    t.integer  "antenapunto_id"
    t.integer  "deco1_id"
    t.integer  "caracteristicadeco1_id"
    t.integer  "deco2_id"
    t.integer  "caracteristicadeco2_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["administrativa_id"], name: "index_gestions_on_administrativa_id"
    t.index ["antenapunto_id"], name: "index_gestions_on_antenapunto_id"
    t.index ["campana_id"], name: "index_gestions_on_campana_id"
    t.index ["caracteristicadeco1_id"], name: "index_gestions_on_caracteristicadeco1_id"
    t.index ["caracteristicadeco2_id"], name: "index_gestions_on_caracteristicadeco2_id"
    t.index ["caracteristicamodem_id"], name: "index_gestions_on_caracteristicamodem_id"
    t.index ["caracteristicastelefono_id"], name: "index_gestions_on_caracteristicastelefono_id"
    t.index ["deco1_id"], name: "index_gestions_on_deco1_id"
    t.index ["deco2_id"], name: "index_gestions_on_deco2_id"
    t.index ["descuento_id"], name: "index_gestions_on_descuento_id"
    t.index ["internet_id"], name: "index_gestions_on_internet_id"
    t.index ["linea_id"], name: "index_gestions_on_linea_id"
    t.index ["modem_id"], name: "index_gestions_on_modem_id"
    t.index ["modopago_id"], name: "index_gestions_on_modopago_id"
    t.index ["origen_id"], name: "index_gestions_on_origen_id"
    t.index ["paquete_id"], name: "index_gestions_on_paquete_id"
    t.index ["promocion_id"], name: "index_gestions_on_promocion_id"
    t.index ["subtipo_id"], name: "index_gestions_on_subtipo_id"
    t.index ["tecno_id"], name: "index_gestions_on_tecno_id"
    t.index ["telefono_id"], name: "index_gestions_on_telefono_id"
    t.index ["tipo_id"], name: "index_gestions_on_tipo_id"
    t.index ["zonal_id"], name: "index_gestions_on_zonal_id"
  end

  create_table "internets", force: :cascade do |t|
    t.string   "pack"
    t.string   "tipo_pago"
    t.decimal  "costo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lineas", force: :cascade do |t|
    t.string   "pack"
    t.string   "tipo_pago"
    t.decimal  "costo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "modems", force: :cascade do |t|
    t.string   "nombre_modem"
    t.string   "ps_modem"
    t.string   "oc_modem"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "modopagos", force: :cascade do |t|
    t.string   "modo_pago"
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "ocpaquetes", force: :cascade do |t|
    t.string   "tipo_ocpaquete"
    t.string   "descripcion"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "origens", force: :cascade do |t|
    t.string   "nombre_origen"
    t.string   "descripcion"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "paquetes", force: :cascade do |t|
    t.string   "ps_paquete"
    t.string   "nombre_paquete"
    t.string   "tipo_paquete"
    t.decimal  "renta"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "promocions", force: :cascade do |t|
    t.decimal  "costo"
    t.string   "tiempo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subtipos", force: :cascade do |t|
    t.string   "nombre_subtipo"
    t.string   "descripcion"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "tecnos", force: :cascade do |t|
    t.string   "tipo_tecnologia"
    t.string   "descripcion"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "telefonos", force: :cascade do |t|
    t.string   "nombre_telefono"
    t.string   "ps_telefono"
    t.string   "oc_telefono"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "tipos", force: :cascade do |t|
    t.string   "nombre_tipo"
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "zonals", force: :cascade do |t|
    t.string   "nombre_zona"
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
