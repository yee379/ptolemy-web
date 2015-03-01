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

ActiveRecord::Schema.define(version: 20140307003916) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "alert__ap_down", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('alert__ap_down_id_seq'::regclass)",     null: false
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "alert__capacity_utilisation", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('alert__capacity_utilisation_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                     null: false
    t.datetime "updated_at",                                                                     null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "alert__devices_unreachable", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('alert__devices_unreachable_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                    null: false
    t.datetime "updated_at",                                                                    null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "alert__fans_outage", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('alert__fans_outage_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "alert__modules_outage", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('alert__modules_outage_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                               null: false
    t.datetime "updated_at",                                                               null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "alert__psus_outage", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('alert__psus_outage_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "alert__transceivers_outofspec", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('alert__transceivers_outofspec_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                       null: false
    t.datetime "updated_at",                                                                       null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "alert__uplinks_down", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('alert__uplinks_down_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                             null: false
    t.datetime "updated_at",                                                             null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "arps__arps", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('arps__arps_id_seq'::regclass)",         null: false
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "arps__arps_history", id: false, force: true do |t|
    t.integer  "id"
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "arps__meta", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('arps__meta_id_seq'::regclass)",         null: false
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "arps__meta_history", id: false, force: true do |t|
    t.integer  "id"
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "entity__entities", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('entity__entities_id_seq'::regclass)",   null: false
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "entity__entities_history", id: false, force: true do |t|
    t.integer  "id"
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "entity__info", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('entity__info_id_seq'::regclass)",       null: false
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "entity__info_history", id: false, force: true do |t|
    t.integer  "id"
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "entity__meta", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('entity__meta_id_seq'::regclass)",       null: false
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  add_index "entity__meta", ["id"], name: "entity__meta_pkey", unique: true, using: :btree

  create_table "entity__meta_history", id: false, force: true do |t|
    t.integer  "id"
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "entity__status", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('entity__status_id_seq'::regclass)",     null: false
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "entity__status_history", id: false, force: true do |t|
    t.integer  "id"
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "hardwares", force: true do |t|
    t.string   "vendor"
    t.string   "model"
    t.string   "bulletin_url"
    t.date     "available"
    t.date     "end_of_sale"
    t.date     "end_of_support"
    t.decimal  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ip_sla__meta", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('ip_sla__meta_id_seq'::regclass)",       null: false
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "ip_sla__meta_history", id: false, force: true do |t|
    t.integer  "id"
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "ipam__devices", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('ipam__devices_id_seq'::regclass)",      null: false
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "ipam__devices_history", id: false, force: true do |t|
    t.integer  "id"
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "ipam__dns", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('ipam__dns_id_seq'::regclass)",          null: false
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "ipam__property_control", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('ipam__property_control_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                null: false
    t.datetime "updated_at",                                                                null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  add_index "ipam__property_control", ["id"], name: "ipam__property_control_pkey", unique: true, using: :btree

  create_table "ipam__rackwise", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('ipam__rackwise_id_seq'::regclass)",     null: false
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "ipam__rackwise_history", id: false, force: true do |t|
    t.integer  "id"
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "ipam__subnets", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('ipam__subnets_id_seq'::regclass)",      null: false
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "ipam__subnets_history", id: false, force: true do |t|
    t.integer  "id"
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "layer1_peer__meta", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('layer1_peer__meta_id_seq'::regclass)",  null: false
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "layer1_peer__meta_history", id: false, force: true do |t|
    t.integer  "id"
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "layer1_peer__neighbour", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('layer1_peer__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                null: false
    t.datetime "updated_at",                                                                null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "layer1_peer__neighbour_history", id: false, force: true do |t|
    t.integer  "id"
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "layer2__neighbour", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('layer2__neighbour_id_seq'::regclass)",  null: false
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "layer2__neighbour__vlan1", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('layer2__neighbour_id_seq'::regclass)",  null: false
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "layer2__neighbour__vlan2", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('layer2__neighbour_id_seq'::regclass)",  null: false
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "layer3__subnets", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('layer3__subnets_id_seq'::regclass)",    null: false
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "layer3__subnets_history", id: false, force: true do |t|
    t.integer  "id"
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "physical_securities", force: true do |t|
    t.string   "device"
    t.string   "environment"
    t.string   "cabinet"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "environment_type"
  end

  create_table "ports__meta", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('ports__meta_id_seq'::regclass)",        null: false
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "ports__status", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('ports__status_id_seq'::regclass)",      null: false
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "ports__status_history", id: false, force: true do |t|
    t.integer  "id"
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "ports__vlan", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('ports__vlan_id_seq'::regclass)",        null: false
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "replacements", force: true do |t|
    t.string   "group_name"
    t.integer  "entity_id"
    t.integer  "property_id"
    t.integer  "hardware_id"
    t.integer  "quantity"
    t.integer  "replacement_hardware_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spanning_tree__meta", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__meta_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                             null: false
    t.datetime "updated_at",                                                             null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__meta_history", id: false, force: true do |t|
    t.integer  "id"
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan101", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan102", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan112", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan113", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan124", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1264", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1265", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1266", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1267", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1268", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1269", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1270", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1271", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1272", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1273", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1274", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan128", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan129", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1296", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1298", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan13", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan130", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1300", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1302", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan131", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1312", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1314", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1316", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1318", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan132", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1320", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1322", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1328", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1330", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1332", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1334", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1336", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan135", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan136", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1376", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1378", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1379", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan14", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan140", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1408", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan141", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1410", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1412", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1414", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1416", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1418", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan142", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1424", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1425", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1426", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1427", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1428", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1429", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan143", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1430", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1431", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1432", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1433", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1434", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1436", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan144", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1441", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1442", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1443", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1444", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1445", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1447", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1448", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1449", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan145", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1450", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1456", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1457", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1458", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1459", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan146", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1460", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1462", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1464", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1465", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1466", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1467", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1488", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1489", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1490", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1491", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1495", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1496", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1497", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1498", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1499", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan15", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1504", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1506", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan151", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1510", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan152", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan153", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan154", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan155", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan16", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan160", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1616", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1617", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1618", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1619", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan164", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1648", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1649", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan165", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1650", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1652", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1653", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1654", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1656", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1658", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan166", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan168", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan173", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan174", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan175", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan176", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1808", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1810", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1812", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1814", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1816", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1818", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1828", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1830", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1832", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1834", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan184", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1841", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1842", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1845", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1846", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1847", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1848", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1851", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1852", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1854", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1860", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1861", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1862", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1863", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1872", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1873", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1874", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1875", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1876", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1877", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1878", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1879", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan188", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1880", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1881", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1882", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1883", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan189", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1904", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1906", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1907", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1908", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1910", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1911", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1912", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1913", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1914", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1915", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan192", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1920", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1921", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1922", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1923", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1925", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1926", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1927", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1928", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1929", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1930", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan1931", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2052", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2053", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2054", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2055", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2056", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2057", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2058", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2059", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2060", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2061", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2062", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2064", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2065", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2066", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2067", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2068", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2069", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2070", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2071", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2072", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2073", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2074", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2075", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2076", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2077", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2079", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan208", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2080", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2081", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2082", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2083", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2084", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2085", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2086", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2088", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2089", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2090", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2091", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2092", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2093", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2094", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2095", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2096", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2097", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2098", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2099", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan21", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2100", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2101", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2102", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2103", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2104", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2105", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2106", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2107", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2108", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2109", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2110", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2111", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2112", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2113", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2114", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2115", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2116", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2117", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2118", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2119", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2120", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2121", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2122", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2123", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2124", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2125", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2126", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2127", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2128", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan216", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan22", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan228", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan229", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan23", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan230", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2304", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2305", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2306", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2307", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2308", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2309", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2310", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2311", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2312", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2313", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2314", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2316", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2317", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2318", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2319", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan232", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2320", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2321", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2322", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2323", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2324", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2325", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2326", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2327", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2328", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2329", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan233", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2330", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2332", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2333", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2334", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2335", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2336", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2337", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2338", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2339", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan234", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2340", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2341", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2342", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2343", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2344", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2345", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2346", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2347", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2348", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2349", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2350", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2351", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2352", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2353", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2354", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2355", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2356", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2357", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2358", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2359", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan236", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2360", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2361", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2362", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2363", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2364", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2365", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2366", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2367", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2368", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2369", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2370", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2371", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2372", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2373", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2374", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2375", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2376", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2377", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2378", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2379", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2380", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2381", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2382", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2383", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2384", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2386", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan24", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan240", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan242", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan244", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2560", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2562", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2564", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2565", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2566", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2567", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2568", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2569", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2570", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2571", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2572", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2573", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2574", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2575", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2576", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2577", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2578", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2579", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2580", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2581", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2582", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2583", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2584", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2585", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2586", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2587", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2588", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2589", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2590", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2591", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2592", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2593", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2594", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2595", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2596", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2597", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2598", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2599", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2600", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2601", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2602", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2603", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2605", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2606", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2613", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2688", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2689", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2690", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2692", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2696", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan28", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2816", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2817", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2818", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2944", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2945", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2946", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2947", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2948", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2949", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2950", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2951", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2952", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2953", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2954", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2955", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2956", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2957", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2958", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2959", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2960", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2961", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2962", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2963", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2964", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2965", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2968", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2969", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan2970", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan3", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan300", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan3008", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan3009", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan301", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan3010", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan3011", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan3012", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan3013", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan3014", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan3015", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan3016", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan3017", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan3018", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan3019", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan302", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan3020", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan3021", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan3022", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan3023", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan3024", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan3025", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan303", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan304", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan305", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan3056", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan3057", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan306", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan3072", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan3076", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan309", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan310", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan311", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan312", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan313", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan314", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan315", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan316", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan317", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan318", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan319", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan32", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan320", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan321", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan322", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan323", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan324", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan325", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan33", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan331", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan3328", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan3331", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan3332", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan3333", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan3344", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan34", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan340", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan341", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan350", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan353", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan354", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan355", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan356", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan357", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan3584", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan3585", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan3586", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan3587", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan3588", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan3589", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan359", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan3590", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan3591", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan3592", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan3593", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan3594", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan360", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan37", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan370", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan371", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan38", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan40", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan400", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan401", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan4040", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan41", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan42", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan43", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan45", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan451", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan46", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan460", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan461", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan462", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan463", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan464", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan465", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan466", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan47", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan48", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan495", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan496", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan497", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan498", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan499", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan500", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan504", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan516", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan517", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan518", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan519", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan52", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan520", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan521", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan522", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan526", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan527", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan53", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan530", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan54", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan548", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan549", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan550", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan551", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan552", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan553", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan554", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan556", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan56", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan606", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan608", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan612", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan614", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan62", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan620", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan622", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan624", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan630", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan631", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan632", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan634", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan635", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan636", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan637", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan638", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan64", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan642", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan643", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan644", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan645", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan646", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan647", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan648", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan649", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan650", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan651", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan654", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan655", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan656", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan657", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan658", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan660", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan661", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan663", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan664", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan665", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan666", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan699", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan700", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan701", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan702", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan703", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan704", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan705", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan706", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan707", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan717", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan718", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan719", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan72", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan720", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan723", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan724", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan725", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan726", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan73", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan732", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan733", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan735", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan736", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan739", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan740", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan748", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan750", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan751", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan752", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan754", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan755", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan756", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan757", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan760", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan761", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan762", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan775", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan778", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan780", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan781", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan782", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan790", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan791", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan793", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan794", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan795", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan796", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan797", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan798", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan799", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan80", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan801", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan802", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan804", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan808", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan809", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan81", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan810", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan812", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan813", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan814", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan815", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan817", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan818", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan819", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan82", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan820", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan821", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan822", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan823", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan831", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan833", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan834", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan84", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan840", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan841", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan842", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan843", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan844", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan845", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan846", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan847", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan852", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan858", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan861", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan862", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan864", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan865", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan866", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan869", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan870", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan871", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan872", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan873", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan874", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan875", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan876", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan877", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan878", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan879", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan880", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan890", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan891", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan894", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan895", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan896", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan897", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan898", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan9", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan900", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan901", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan902", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan903", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan904", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan906", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan908", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan910", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan911", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan912", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan913", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan914", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan915", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan916", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan918", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan92", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan928", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan929", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan93", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan930", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan931", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan932", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan933", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan934", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan935", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan936", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan937", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan938", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan939", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan944", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan945", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan946", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan947", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan948", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan949", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan950", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan951", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan952", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan953", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan954", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan955", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan956", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan957", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan958", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan959", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan960", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan961", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan962", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan963", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan978", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan979", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan982", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan983", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan984", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan99", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan997", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan998", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour__vlan999", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__neighbour_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__neighbour_history", id: false, force: true do |t|
    t.integer  "id"
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__port", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__port_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                             null: false
    t.datetime "updated_at",                                                             null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__port_history", id: false, force: true do |t|
    t.integer  "id"
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__root", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__root_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                             null: false
    t.datetime "updated_at",                                                             null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__root_history", id: false, force: true do |t|
    t.integer  "id"
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__status", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('spanning_tree__status_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                               null: false
    t.datetime "updated_at",                                                               null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "spanning_tree__status_history", id: false, force: true do |t|
    t.integer  "id"
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "transceiver__meta", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('transceiver__meta_id_seq'::regclass)",  null: false
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "transceiver__meta_history", id: false, force: true do |t|
    t.integer  "id"
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "wireless__coverage", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('wireless__coverage_id_seq'::regclass)", null: false
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "wireless__info", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('wireless__info_id_seq'::regclass)",     null: false
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "wireless__info_history", id: false, force: true do |t|
    t.integer  "id"
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "wireless__status", id: false, force: true do |t|
    t.integer  "id",         default: "nextval('wireless__status_id_seq'::regclass)",   null: false
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

  create_table "wireless__status_history", id: false, force: true do |t|
    t.integer  "id"
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.hstore   "context",    default: "hstore((ARRAY[]::character varying[])::text[])"
    t.hstore   "data",       default: "hstore((ARRAY[]::character varying[])::text[])"
  end

end
