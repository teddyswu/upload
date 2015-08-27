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

ActiveRecord::Schema.define(version: 20150827091802) do

  create_table "accessory_categories", force: :cascade do |t|
    t.integer  "domain_id",  limit: 4,   null: false
    t.string   "name",       limit: 255
    t.integer  "sort",       limit: 4
    t.boolean  "enabled",    limit: 1
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "ad_images", force: :cascade do |t|
    t.string   "file",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "ad_msgs", force: :cascade do |t|
    t.string   "to_user",    limit: 255
    t.string   "from_user",  limit: 255
    t.text     "msg",        limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "ad_urls", force: :cascade do |t|
    t.string   "file",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "article_content_contentfactory_ships", force: :cascade do |t|
    t.string   "title",                          limit: 255
    t.text     "content",                        limit: 16777215
    t.integer  "sort",                           limit: 4,        default: 0
    t.boolean  "enabled",                        limit: 1,        default: true
    t.string   "cf_article_id",                  limit: 255
    t.string   "forum_id",                       limit: 255
    t.string   "article_contentfactory_ship_id", limit: 255
    t.integer  "article_content_id",             limit: 4
    t.datetime "created_at",                                                     null: false
    t.datetime "updated_at",                                                     null: false
  end

  add_index "article_content_contentfactory_ships", ["article_content_id"], name: "cf_article_content_article_content_id", using: :btree
  add_index "article_content_contentfactory_ships", ["article_contentfactory_ship_id"], name: "cf_article_content_cf_article_ship_id", using: :btree
  add_index "article_content_contentfactory_ships", ["cf_article_id"], name: "cf_article_content_cf_article_id", using: :btree
  add_index "article_content_contentfactory_ships", ["enabled"], name: "cf_article_content_enabled", using: :btree
  add_index "article_content_contentfactory_ships", ["forum_id"], name: "cf_article_content_cf_forum_id", using: :btree
  add_index "article_content_contentfactory_ships", ["sort"], name: "cf_article_content_sort", using: :btree

  create_table "article_contentfactory_ships", force: :cascade do |t|
    t.string   "tag_id",         limit: 255, default: "-1"
    t.boolean  "is_locked",      limit: 1,   default: false
    t.boolean  "is_in_gem",      limit: 1,   default: false
    t.boolean  "is_top",         limit: 1,   default: false
    t.string   "title",          limit: 255
    t.integer  "author_user_id", limit: 4
    t.integer  "status",         limit: 4,   default: 1
    t.integer  "content_count",  limit: 4,   default: 1
    t.string   "cf_article_id",  limit: 255
    t.string   "forum_id",       limit: 255
    t.integer  "article_id",     limit: 4
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  add_index "article_contentfactory_ships", ["article_id"], name: "cf_article_ship_article_id", using: :btree
  add_index "article_contentfactory_ships", ["author_user_id"], name: "cf_article_ship_author_user_id", using: :btree
  add_index "article_contentfactory_ships", ["content_count"], name: "cf_article_ship_content_count", using: :btree
  add_index "article_contentfactory_ships", ["forum_id"], name: "cf_article_ship_forum_id", using: :btree
  add_index "article_contentfactory_ships", ["is_in_gem"], name: "cf_article_ship_is_in_gem", using: :btree
  add_index "article_contentfactory_ships", ["is_locked"], name: "cf_article_ship_is_locked", using: :btree
  add_index "article_contentfactory_ships", ["is_top"], name: "cf_article_ship_is_top", using: :btree
  add_index "article_contentfactory_ships", ["status"], name: "cf_article_ship_status", using: :btree

  create_table "article_contents", force: :cascade do |t|
    t.integer  "article_id", limit: 4,                       null: false
    t.integer  "user_id",    limit: 4,        default: 3,    null: false
    t.string   "title",      limit: 255,      default: ""
    t.text     "content",    limit: 16777215
    t.integer  "sort",       limit: 4,        default: 0,    null: false
    t.boolean  "enabled",    limit: 1,        default: true, null: false
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  add_index "article_contents", ["article_id"], name: "index_article_contents_on_article_id", using: :btree
  add_index "article_contents", ["enabled"], name: "index_article_contents_on_enabled", using: :btree
  add_index "article_contents", ["sort"], name: "index_article_contents_on_sort", using: :btree
  add_index "article_contents", ["user_id"], name: "index_article_contents_on_user_id", using: :btree

  create_table "article_del_reasons", force: :cascade do |t|
    t.string   "name",       limit: 255, default: ""
    t.integer  "sort",       limit: 4,   default: 0,    null: false
    t.boolean  "enabled",    limit: 1,   default: true, null: false
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "article_del_reasons", ["enabled"], name: "index_article_del_reasons_on_enabled", using: :btree
  add_index "article_del_reasons", ["sort"], name: "index_article_del_reasons_on_sort", using: :btree

  create_table "article_domain_tops", force: :cascade do |t|
    t.integer  "domain_id",  limit: 4,             null: false
    t.integer  "article_id", limit: 4,             null: false
    t.boolean  "enabled",    limit: 1,             null: false
    t.integer  "user_id",    limit: 4, default: 3, null: false
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  add_index "article_domain_tops", ["article_id"], name: "index_article_domain_tops_on_article_id", using: :btree
  add_index "article_domain_tops", ["domain_id"], name: "index_article_domain_tops_on_domain_id", using: :btree
  add_index "article_domain_tops", ["enabled"], name: "index_article_domain_tops_on_enabled", using: :btree
  add_index "article_domain_tops", ["user_id"], name: "index_article_domain_tops_on_user_id", using: :btree

  create_table "article_image_contentfactory_ships", force: :cascade do |t|
    t.integer  "categorized",                        limit: 4,     default: 1
    t.text     "url_origin",                         limit: 65535
    t.text     "url_big",                            limit: 65535
    t.text     "url_medium",                         limit: 65535
    t.text     "url_small",                          limit: 65535
    t.string   "gem_article_contentfactory_ship_id", limit: 255
    t.integer  "article_image_id",                   limit: 4
    t.datetime "created_at",                                                   null: false
    t.datetime "updated_at",                                                   null: false
  end

  add_index "article_image_contentfactory_ships", ["article_image_id"], name: "cf_article_image_article_image_id", using: :btree
  add_index "article_image_contentfactory_ships", ["categorized"], name: "cf_article_image_cf_categorized", using: :btree
  add_index "article_image_contentfactory_ships", ["gem_article_contentfactory_ship_id"], name: "cf_article_image_cf_gem_article_id", using: :btree

  create_table "article_images", force: :cascade do |t|
    t.integer  "categorized",     limit: 4,     default: 1
    t.string   "imageable_type",  limit: 255
    t.integer  "imageable_id",    limit: 4
    t.string   "file",            limit: 255
    t.string   "type_text",       limit: 255
    t.text     "url_origin",      limit: 65535
    t.text     "url_extra_large", limit: 65535
    t.text     "url_big",         limit: 65535
    t.text     "url_medium",      limit: 65535
    t.text     "url_small",       limit: 65535
    t.text     "url_thumb",       limit: 65535
    t.integer  "user_id",         limit: 4
    t.boolean  "watermark",       limit: 1,     default: false
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
  end

  add_index "article_images", ["categorized"], name: "index_article_images_on_categorized", using: :btree
  add_index "article_images", ["imageable_id"], name: "index_article_images_on_imageable_id", using: :btree
  add_index "article_images", ["imageable_type"], name: "index_article_images_on_imageable_type", using: :btree
  add_index "article_images", ["type_text"], name: "index_article_images_on_type_text", using: :btree
  add_index "article_images", ["user_id"], name: "index_article_images_on_user_id", using: :btree

  create_table "article_replies", force: :cascade do |t|
    t.integer  "article_id",            limit: 4
    t.integer  "user_id",               limit: 4
    t.text     "content",               limit: 65535
    t.integer  "parent_id",             limit: 4
    t.boolean  "enabled",               limit: 1
    t.integer  "article_del_reason_id", limit: 4
    t.text     "delete_reason",         limit: 65535
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "article_replies", ["article_id", "parent_id", "enabled"], name: "index_article_replies_on_article_id_and_parent_id_and_enabled", using: :btree
  add_index "article_replies", ["user_id"], name: "index_article_replies_on_user_id", using: :btree

  create_table "article_resource_ships", force: :cascade do |t|
    t.integer  "article_id",    limit: 4
    t.string   "resource_type", limit: 255, null: false
    t.integer  "resource_id",   limit: 4,   null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "articles", force: :cascade do |t|
    t.integer  "forum_id",              limit: 4,                     null: false
    t.boolean  "is_locked",             limit: 1,     default: false
    t.boolean  "is_in_gem",             limit: 1,     default: false
    t.boolean  "is_top",                limit: 1,     default: false
    t.string   "title",                 limit: 255,   default: ""
    t.string   "url_keyword",           limit: 255
    t.integer  "author_user_id",        limit: 4,     default: 3,     null: false
    t.integer  "replier_user_id",       limit: 4,     default: 3,     null: false
    t.integer  "article_replies_count", limit: 4,     default: 0
    t.datetime "last_reply"
    t.integer  "status",                limit: 4,     default: 1,     null: false
    t.integer  "pageview",              limit: 4,     default: 0,     null: false
    t.integer  "article_del_reason_id", limit: 4
    t.text     "delete_reason",         limit: 65535
    t.integer  "content_count",         limit: 4,     default: 1
    t.datetime "created_at",                                          null: false
    t.datetime "updated_at",                                          null: false
  end

  add_index "articles", ["author_user_id"], name: "index_articles_on_author_user_id", using: :btree
  add_index "articles", ["created_at", "status"], name: "index_articles_on_created_at_and_status", using: :btree
  add_index "articles", ["forum_id", "status", "is_top", "last_reply"], name: "article_list", using: :btree
  add_index "articles", ["forum_id"], name: "index_articles_on_forum_id", using: :btree

  create_table "authorization_results", force: :cascade do |t|
    t.string   "ordernumber", limit: 255
    t.decimal  "amount",                    precision: 10
    t.string   "authstatus",  limit: 255
    t.string   "authcode",    limit: 255
    t.string   "authtime",    limit: 255
    t.text     "authmsg",     limit: 65535
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "authorizations", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.string   "provider",   limit: 255
    t.string   "uid",        limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "authorizations", ["user_id"], name: "index_authorizations_on_user_id", using: :btree

  create_table "basic_role_mappers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "posts",      limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "bonus_gift_ships", force: :cascade do |t|
    t.integer  "bonus_id",        limit: 4
    t.integer  "user_gift_id",    limit: 4
    t.integer  "quantity",        limit: 4
    t.integer  "remain_quantity", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "bonus_gift_ships", ["bonus_id"], name: "index_bonus_gift_ships_on_bonus_id", using: :btree
  add_index "bonus_gift_ships", ["user_gift_id"], name: "index_bonus_gift_ships_on_user_gift_id", using: :btree

  create_table "bonus_records", force: :cascade do |t|
    t.integer  "bonus_id",     limit: 4
    t.integer  "bonus_points", limit: 4
    t.integer  "user_id",      limit: 4
    t.integer  "user_gift_id", limit: 4
    t.integer  "quantity",     limit: 4
    t.string   "exchange_ip",  limit: 255
    t.boolean  "is_sended",    limit: 1
    t.integer  "bonus_type",   limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "bonus_records", ["bonus_id"], name: "index_bonus_records_on_bonus_id", using: :btree
  add_index "bonus_records", ["user_id"], name: "index_bonus_records_on_user_id", using: :btree

  create_table "bonuses", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.text     "intro",      limit: 65535
    t.integer  "domain_id",  limit: 4
    t.datetime "date_from"
    t.datetime "date_to"
    t.boolean  "enabled",    limit: 1
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "brand_hall_ships", force: :cascade do |t|
    t.integer  "brand_id",   limit: 4
    t.integer  "hall_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "brand_hall_ships", ["brand_id"], name: "index_brand_hall_ships_on_brand_id", using: :btree
  add_index "brand_hall_ships", ["hall_id"], name: "index_brand_hall_ships_on_hall_id", using: :btree

  create_table "brand_images", force: :cascade do |t|
    t.integer  "categorized",    limit: 4,     default: 1
    t.string   "imageable_type", limit: 255
    t.integer  "imageable_id",   limit: 4
    t.string   "file",           limit: 255
    t.string   "type_text",      limit: 255
    t.text     "url_origin",     limit: 65535
    t.text     "url_big",        limit: 65535
    t.text     "url_medium",     limit: 65535
    t.text     "url_small",      limit: 65535
    t.text     "url_thumb",      limit: 65535
    t.integer  "user_id",        limit: 4
    t.boolean  "watermark",      limit: 1,     default: false
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  add_index "brand_images", ["categorized"], name: "index_brand_images_on_categorized", using: :btree
  add_index "brand_images", ["imageable_id"], name: "index_brand_images_on_imageable_id", using: :btree
  add_index "brand_images", ["imageable_type"], name: "index_brand_images_on_imageable_type", using: :btree
  add_index "brand_images", ["type_text"], name: "index_brand_images_on_type_text", using: :btree
  add_index "brand_images", ["user_id"], name: "index_brand_images_on_user_id", using: :btree

  create_table "brands", force: :cascade do |t|
    t.string   "name_normal",   limit: 255
    t.string   "name_local",    limit: 255
    t.integer  "sort",          limit: 4,     default: 99
    t.text     "intro",         limit: 65535
    t.text     "story",         limit: 65535
    t.text     "keyword",       limit: 65535
    t.boolean  "enabled",       limit: 1
    t.boolean  "is_adv_search", limit: 1
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  add_index "brands", ["enabled"], name: "index_brands_on_enabled", using: :btree
  add_index "brands", ["is_adv_search"], name: "index_brands_on_is_adv_search", using: :btree

  create_table "canned_responses", force: :cascade do |t|
    t.string   "title",                limit: 255
    t.text     "content",              limit: 65535
    t.integer  "question_category_id", limit: 4,                    null: false
    t.integer  "domain_id",            limit: 4,                    null: false
    t.boolean  "enabled",              limit: 1,     default: true, null: false
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
  end

  add_index "canned_responses", ["domain_id"], name: "index_canned_responses_on_domain_id", using: :btree
  add_index "canned_responses", ["enabled"], name: "index_canned_responses_on_enabled", using: :btree
  add_index "canned_responses", ["question_category_id"], name: "index_canned_responses_on_question_category_id", using: :btree

  create_table "chat_rooms", force: :cascade do |t|
    t.integer  "member_a",   limit: 4, null: false
    t.integer  "member_b",   limit: 4, null: false
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "region_id",  limit: 4
    t.integer  "sort",       limit: 4,   default: 0
    t.boolean  "enabled",    limit: 1,   default: false, null: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "cities", ["enabled"], name: "index_cities_on_enabled", using: :btree
  add_index "cities", ["sort"], name: "index_cities_on_sort", using: :btree

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",    limit: 255,                 null: false
    t.string   "data_content_type", limit: 255
    t.integer  "data_file_size",    limit: 4
    t.integer  "assetable_id",      limit: 4
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width",             limit: 4
    t.integer  "height",            limit: 4
    t.boolean  "watermark",         limit: 1,   default: false
    t.boolean  "magnifier",         limit: 1
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable", using: :btree
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type", using: :btree

  create_table "del_chats", force: :cascade do |t|
    t.integer  "member",       limit: 4, null: false
    t.integer  "chat_room_id", limit: 4, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "districts", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "zipcode",    limit: 255
    t.integer  "city_id",    limit: 4
    t.integer  "sort",       limit: 4,   default: 0,     null: false
    t.boolean  "enabled",    limit: 1,   default: false, null: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "districts", ["city_id"], name: "index_districts_on_city_id", using: :btree
  add_index "districts", ["enabled"], name: "index_districts_on_enabled", using: :btree
  add_index "districts", ["sort"], name: "index_districts_on_sort", using: :btree

  create_table "domain_user_ships", force: :cascade do |t|
    t.integer  "domain_id",  limit: 4, null: false
    t.integer  "user_id",    limit: 4, null: false
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "domains", force: :cascade do |t|
    t.string   "name_local",         limit: 255,   default: ""
    t.string   "name_en",            limit: 255
    t.string   "color_style",        limit: 255
    t.string   "file",               limit: 255
    t.string   "default_image_file", limit: 255
    t.string   "default_user_image", limit: 255
    t.integer  "sort",               limit: 4,     default: 99,   null: false
    t.string   "keyword",            limit: 255
    t.text     "seo_desc",           limit: 65535
    t.text     "footer_contact",     limit: 65535
    t.text     "footer_copyright",   limit: 65535
    t.boolean  "enabled",            limit: 1,     default: true, null: false
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "domains", ["enabled"], name: "index_domains_on_enabled", using: :btree
  add_index "domains", ["sort"], name: "index_domains_on_sort", using: :btree

  create_table "ecommerce_notices", force: :cascade do |t|
    t.integer  "domain_id",      limit: 4
    t.text     "qualifications", limit: 65535
    t.text     "faq",            limit: 65535
    t.text     "purchase",       limit: 65535
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "financial_institution_branches", force: :cascade do |t|
    t.integer  "institution_district_ship_id", limit: 4
    t.string   "name",                         limit: 255
    t.integer  "sort",                         limit: 4
    t.boolean  "enabled",                      limit: 1
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "financial_institutions", force: :cascade do |t|
    t.integer  "financial_unit_id", limit: 4
    t.string   "name",              limit: 255
    t.string   "code",              limit: 255
    t.integer  "sort",              limit: 4
    t.boolean  "enabled",           limit: 1
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "financial_units", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "sort",       limit: 4
    t.boolean  "enabled",    limit: 1
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "footers", force: :cascade do |t|
    t.text     "name",       limit: 65535
    t.string   "url_code",   limit: 255
    t.text     "note",       limit: 65535
    t.text     "content",    limit: 65535
    t.integer  "sort",       limit: 4
    t.integer  "parent_id",  limit: 4
    t.boolean  "is_editor",  limit: 1
    t.integer  "domain_id",  limit: 4
    t.boolean  "enabled",    limit: 1
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "forum_article_cats", force: :cascade do |t|
    t.string   "name",       limit: 255, default: ""
    t.integer  "forum_id",   limit: 4,                  null: false
    t.integer  "sort",       limit: 4,   default: 0,    null: false
    t.boolean  "enabled",    limit: 1,   default: true, null: false
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "forum_article_cats", ["enabled"], name: "index_forum_article_cats_on_enabled", using: :btree
  add_index "forum_article_cats", ["forum_id"], name: "index_forum_article_cats_on_forum_id", using: :btree
  add_index "forum_article_cats", ["sort"], name: "index_forum_article_cats_on_sort", using: :btree

  create_table "forum_article_ships", force: :cascade do |t|
    t.integer  "forum_id",             limit: 4,                 null: false
    t.integer  "article_id",           limit: 4,                 null: false
    t.integer  "forum_article_cat_id", limit: 4,                 null: false
    t.boolean  "is_top",               limit: 1, default: false
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
  end

  add_index "forum_article_ships", ["article_id"], name: "index_forum_article_ships_on_article_id", using: :btree
  add_index "forum_article_ships", ["forum_article_cat_id"], name: "index_forum_article_ships_on_forum_article_cat_id", using: :btree
  add_index "forum_article_ships", ["forum_id"], name: "index_forum_article_ships_on_forum_id", using: :btree
  add_index "forum_article_ships", ["is_top"], name: "index_forum_article_ships_on_is_top", using: :btree

  create_table "forum_group_ships", force: :cascade do |t|
    t.integer  "forum_id",       limit: 4
    t.integer  "forum_group_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "forum_group_ships", ["forum_group_id"], name: "index_forum_group_ships_on_forum_group_id", using: :btree
  add_index "forum_group_ships", ["forum_id"], name: "index_forum_group_ships_on_forum_id", using: :btree

  create_table "forum_groups", force: :cascade do |t|
    t.integer  "domain_id",  limit: 4,                  null: false
    t.string   "name",       limit: 255,   default: ""
    t.text     "announce",   limit: 65535
    t.integer  "sort",       limit: 4,     default: 0,  null: false
    t.boolean  "enabled",    limit: 1,                  null: false
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "forum_groups", ["domain_id"], name: "index_forum_groups_on_domain_id", using: :btree
  add_index "forum_groups", ["enabled"], name: "index_forum_groups_on_enabled", using: :btree
  add_index "forum_groups", ["sort"], name: "index_forum_groups_on_sort", using: :btree

  create_table "forum_images", force: :cascade do |t|
    t.integer  "categorized",     limit: 4,     default: 1
    t.string   "imageable_type",  limit: 255
    t.integer  "imageable_id",    limit: 4
    t.string   "file",            limit: 255
    t.string   "type_text",       limit: 255
    t.text     "url_origin",      limit: 65535
    t.text     "url_extra_large", limit: 65535
    t.text     "url_big",         limit: 65535
    t.text     "url_medium",      limit: 65535
    t.text     "url_small",       limit: 65535
    t.text     "url_thumb",       limit: 65535
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
    t.boolean  "watermark",       limit: 1,     default: false
    t.integer  "user_id",         limit: 4
  end

  add_index "forum_images", ["categorized"], name: "index_forum_images_on_categorized", using: :btree
  add_index "forum_images", ["imageable_id"], name: "index_forum_images_on_imageable_id", using: :btree
  add_index "forum_images", ["imageable_type"], name: "index_forum_images_on_imageable_type", using: :btree
  add_index "forum_images", ["type_text"], name: "index_forum_images_on_type_text", using: :btree
  add_index "forum_images", ["user_id"], name: "index_forum_images_on_user_id", using: :btree

  create_table "forum_relation_products", force: :cascade do |t|
    t.integer  "sort",       limit: 4
    t.integer  "forum_id",   limit: 4, null: false
    t.integer  "product_id", limit: 4, null: false
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "forum_resource_ships", force: :cascade do |t|
    t.integer  "forum_id",      limit: 4
    t.string   "resource_type", limit: 30
    t.integer  "resource_id",   limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "forum_resource_ships", ["forum_id"], name: "index_forum_resource_ships_on_forum_id", using: :btree
  add_index "forum_resource_ships", ["resource_id"], name: "index_forum_resource_ships_on_resource_id", using: :btree
  add_index "forum_resource_ships", ["resource_type"], name: "index_forum_resource_ships_on_resource_type", using: :btree

  create_table "forums", force: :cascade do |t|
    t.string   "name",          limit: 255,   default: ""
    t.text     "intro",         limit: 65535
    t.text     "announce",      limit: 65535
    t.datetime "publish_date"
    t.boolean  "is_locked",     limit: 1,     default: false, null: false
    t.string   "resource_type", limit: 255
    t.integer  "sort",          limit: 4,     default: 0,     null: false
    t.integer  "pageview",      limit: 4
    t.integer  "domain_id",     limit: 4
    t.boolean  "enabled",       limit: 1,     default: true,  null: false
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  add_index "forums", ["domain_id"], name: "index_forums_on_domain_id", using: :btree
  add_index "forums", ["enabled"], name: "index_forums_on_enabled", using: :btree
  add_index "forums", ["is_locked"], name: "index_forums_on_is_locked", using: :btree
  add_index "forums", ["sort"], name: "index_forums_on_sort", using: :btree

  create_table "gem_article_contentfactory_ships", force: :cascade do |t|
    t.string   "title",           limit: 255
    t.text     "intro",           limit: 65535
    t.integer  "editor_type",     limit: 4,     default: 1
    t.integer  "status",          limit: 4,     default: 1
    t.datetime "publish_date"
    t.integer  "publish_user_id", limit: 4
    t.integer  "top_type",        limit: 4,     default: 1
    t.datetime "datetime_from"
    t.text     "keywords",        limit: 65535
    t.integer  "domain_id",       limit: 4
    t.string   "cf_article_id",   limit: 255
    t.integer  "gem_article_id",  limit: 4
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  add_index "gem_article_contentfactory_ships", ["cf_article_id"], name: "cf_gem_article_cf_article_id", using: :btree
  add_index "gem_article_contentfactory_ships", ["datetime_from"], name: "cf_gem_article_datetime_from", using: :btree
  add_index "gem_article_contentfactory_ships", ["domain_id"], name: "cf_gem_article_domain_id", using: :btree
  add_index "gem_article_contentfactory_ships", ["editor_type"], name: "cf_gem_article_editor_type", using: :btree
  add_index "gem_article_contentfactory_ships", ["gem_article_id"], name: "cf_gem_article_gem_article_id", using: :btree
  add_index "gem_article_contentfactory_ships", ["publish_date"], name: "cf_gem_article_publish_date", using: :btree
  add_index "gem_article_contentfactory_ships", ["publish_user_id"], name: "cf_gem_article_publish_user_id", using: :btree
  add_index "gem_article_contentfactory_ships", ["status"], name: "cf_gem_article_cf_status", using: :btree
  add_index "gem_article_contentfactory_ships", ["top_type"], name: "cf_gem_article_top_type", using: :btree

  create_table "gem_article_resource_ships", force: :cascade do |t|
    t.integer  "gem_article_id", limit: 4
    t.string   "resource_type",  limit: 30
    t.integer  "resource_id",    limit: 4
    t.integer  "recommend_type", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "gem_article_resource_ships", ["gem_article_id"], name: "index_gem_article_resource_ships_on_gem_article_id", using: :btree
  add_index "gem_article_resource_ships", ["resource_id"], name: "index_gem_article_resource_ships_on_resource_id", using: :btree
  add_index "gem_article_resource_ships", ["resource_type"], name: "index_gem_article_resource_ships_on_resource_type", using: :btree

  create_table "gem_articles", force: :cascade do |t|
    t.integer  "article_id",        limit: 4,                  null: false
    t.string   "title",             limit: 255,   default: ""
    t.text     "intro",             limit: 65535
    t.integer  "editor_type",       limit: 4,                  null: false
    t.integer  "status",            limit: 4,                  null: false
    t.datetime "recommend_date"
    t.integer  "recommend_user_id", limit: 4,     default: 3,  null: false
    t.datetime "audit_date"
    t.integer  "audit_user_id",     limit: 4,     default: 3,  null: false
    t.integer  "last_editor_id",    limit: 4
    t.text     "keywords",          limit: 65535
    t.integer  "top_type",          limit: 4,     default: 1,  null: false
    t.datetime "datetime_from"
    t.integer  "domain_id",         limit: 4,                  null: false
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  add_index "gem_articles", ["article_id"], name: "index_gem_articles_on_article_id", using: :btree
  add_index "gem_articles", ["domain_id"], name: "index_gem_articles_on_domain_id", using: :btree
  add_index "gem_articles", ["top_type", "status", "domain_id", "datetime_from"], name: "headline", using: :btree

  create_table "gem_dir_article_ships", force: :cascade do |t|
    t.integer  "gem_dir_id",     limit: 4, default: -1, null: false
    t.integer  "gem_article_id", limit: 4, default: -1, null: false
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "gem_dir_article_ships", ["gem_article_id"], name: "index_gem_dir_article_ships_on_gem_article_id", using: :btree
  add_index "gem_dir_article_ships", ["gem_dir_id"], name: "index_gem_dir_article_ships_on_gem_dir_id", using: :btree

  create_table "gem_dirs", force: :cascade do |t|
    t.integer  "domain_id",         limit: 4,                  null: false
    t.integer  "dir_type",          limit: 4,                  null: false
    t.string   "code",              limit: 255
    t.string   "name",              limit: 255,   default: ""
    t.text     "intro",             limit: 65535
    t.integer  "gem_article_count", limit: 4,     default: 0,  null: false
    t.integer  "sort",              limit: 4,     default: 0,  null: false
    t.boolean  "enabled",           limit: 1,                  null: false
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  add_index "gem_dirs", ["dir_type"], name: "index_gem_dirs_on_dir_type", using: :btree
  add_index "gem_dirs", ["domain_id"], name: "index_gem_dirs_on_domain_id", using: :btree
  add_index "gem_dirs", ["enabled"], name: "index_gem_dirs_on_enabled", using: :btree
  add_index "gem_dirs", ["sort"], name: "index_gem_dirs_on_sort", using: :btree

  create_table "halls", force: :cascade do |t|
    t.string   "name_local",           limit: 255,                          default: ""
    t.string   "name_en",              limit: 255
    t.integer  "sort",                 limit: 4,                            default: 99,     null: false
    t.integer  "domain_id",            limit: 4,                                             null: false
    t.decimal  "parameter_same_price",             precision: 20, scale: 4, default: 1000.0, null: false
    t.integer  "quote_status",         limit: 4,                            default: 0,      null: false
    t.boolean  "enabled",              limit: 1,                            default: true,   null: false
    t.datetime "created_at",                                                                 null: false
    t.datetime "updated_at",                                                                 null: false
  end

  add_index "halls", ["domain_id"], name: "index_halls_on_domain_id", using: :btree
  add_index "halls", ["enabled"], name: "index_halls_on_enabled", using: :btree
  add_index "halls", ["quote_status"], name: "index_halls_on_quote_status", using: :btree
  add_index "halls", ["sort"], name: "index_halls_on_sort", using: :btree

  create_table "institution_district_ships", force: :cascade do |t|
    t.integer  "district_id",              limit: 4
    t.integer  "financial_institution_id", limit: 4
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "isp_fee_combo_logs", force: :cascade do |t|
    t.integer  "isp_fee_id",                   limit: 4
    t.integer  "isp_plan_id",                  limit: 4
    t.integer  "hall_id",                      limit: 4
    t.integer  "max_quote_value",              limit: 4
    t.datetime "update_time_of_original_data"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "isp_fee_combo_logs", ["isp_fee_id"], name: "index_isp_fee_combo_logs_on_isp_fee_id", using: :btree
  add_index "isp_fee_combo_logs", ["isp_plan_id"], name: "index_isp_fee_combo_logs_on_isp_plan_id", using: :btree

  create_table "isp_fee_combos", force: :cascade do |t|
    t.integer  "isp_fee_id",      limit: 4, null: false
    t.integer  "isp_plan_id",     limit: 4, null: false
    t.integer  "hall_id",         limit: 4, null: false
    t.integer  "max_quote_value", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "isp_fee_combos", ["hall_id"], name: "index_isp_fee_combos_on_hall_id", using: :btree
  add_index "isp_fee_combos", ["isp_fee_id"], name: "index_isp_fee_combos_on_isp_id", using: :btree
  add_index "isp_fee_combos", ["isp_plan_id"], name: "index_isp_fee_combos_on_isp_plan_id", using: :btree

  create_table "isp_fees", force: :cascade do |t|
    t.integer  "isp_vendor_id",   limit: 4
    t.integer  "isp_protocol_id", limit: 4
    t.string   "name",            limit: 255
    t.text     "explanation",     limit: 65535
    t.boolean  "enabled",         limit: 1,     default: true
    t.integer  "sort",            limit: 4
    t.integer  "hall_id",         limit: 4
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  add_index "isp_fees", ["enabled"], name: "index_isp_fees_on_enabled", using: :btree
  add_index "isp_fees", ["isp_protocol_id"], name: "index_isp_fees_on_isp_protocol_id", using: :btree
  add_index "isp_fees", ["isp_vendor_id"], name: "index_isp_fees_on_isp_id", using: :btree

  create_table "isp_plans", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.boolean  "enabled",    limit: 1,   default: true
    t.integer  "sort",       limit: 4
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "isp_plans", ["enabled"], name: "index_isp_plans_on_enabled", using: :btree

  create_table "isp_protocols", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.boolean  "enabled",    limit: 1,   default: true
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "isp_protocols", ["enabled"], name: "index_isp_protocols_on_enabled", using: :btree

  create_table "isp_vendors", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.boolean  "enabled",    limit: 1,   default: true
    t.integer  "sort",       limit: 4
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "isp_vendors", ["enabled"], name: "index_isp_vendors_on_enabled", using: :btree

  create_table "issue_replies", force: :cascade do |t|
    t.text     "content",    limit: 65535
    t.string   "user_name",  limit: 255
    t.integer  "user_id",    limit: 4,     null: false
    t.integer  "issue_id",   limit: 4,     null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "issue_replies", ["issue_id"], name: "index_issue_replies_on_issue_id", using: :btree
  add_index "issue_replies", ["user_id"], name: "index_issue_replies_on_user_id", using: :btree
  add_index "issue_replies", ["user_name"], name: "index_issue_replies_on_user_name", using: :btree

  create_table "issues", force: :cascade do |t|
    t.string   "name",                 limit: 255,                   null: false
    t.string   "email",                limit: 255,                   null: false
    t.string   "phone",                limit: 255
    t.string   "title",                limit: 255,                   null: false
    t.text     "content",              limit: 65535,                 null: false
    t.string   "ip",                   limit: 255
    t.integer  "question_category_id", limit: 4,                     null: false
    t.integer  "question_item_id",     limit: 4,                     null: false
    t.boolean  "is_reply",             limit: 1,     default: false
    t.integer  "domain_id",            limit: 4
    t.integer  "status",               limit: 4,     default: 1,     null: false
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
  end

  add_index "issues", ["domain_id"], name: "index_issues_on_domain_id", using: :btree
  add_index "issues", ["email"], name: "index_issues_on_email", using: :btree
  add_index "issues", ["name"], name: "index_issues_on_name", using: :btree
  add_index "issues", ["question_category_id"], name: "index_issues_on_question_category_id", using: :btree
  add_index "issues", ["question_item_id"], name: "index_issues_on_question_item_id", using: :btree
  add_index "issues", ["status"], name: "index_issues_on_status", using: :btree

  create_table "logistics", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.boolean  "enabled",    limit: 1
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "managers", force: :cascade do |t|
    t.string   "account",    limit: 255
    t.string   "email",      limit: 255
    t.boolean  "enabled",    limit: 1
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "managers", ["account", "email", "enabled"], name: "index_managers_on_account_and_email_and_enabled", using: :btree

  create_table "order_infos", force: :cascade do |t|
    t.integer  "order_id",             limit: 4
    t.integer  "user_id",              limit: 4
    t.string   "billing_name",         limit: 255
    t.string   "billing_telphone",     limit: 255
    t.string   "billing_phone",        limit: 255
    t.integer  "billing_city_id",      limit: 4
    t.integer  "billing_district_id",  limit: 4
    t.text     "billing_address",      limit: 65535
    t.string   "shipping_name",        limit: 255
    t.string   "shipping_telphone",    limit: 255
    t.string   "shipping_phone",       limit: 255
    t.integer  "shipping_city_id",     limit: 4
    t.integer  "shipping_district_id", limit: 4
    t.text     "shipping_address",     limit: 65535
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "order_invoices", force: :cascade do |t|
    t.integer  "order_id",           limit: 4
    t.string   "vat_number",         limit: 255
    t.string   "company_letterhead", limit: 255
    t.string   "addressee",          limit: 255
    t.integer  "city_id",            limit: 4
    t.integer  "district_id",        limit: 4
    t.integer  "address",            limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "order_issue_categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "sort",       limit: 4
    t.boolean  "enabled",    limit: 1
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "order_issue_items", force: :cascade do |t|
    t.integer  "category_id", limit: 4
    t.string   "name",        limit: 255
    t.integer  "sort",        limit: 4
    t.boolean  "enabled",     limit: 1
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "order_issue_replies", force: :cascade do |t|
    t.integer  "order_issue_id", limit: 4
    t.integer  "replier_id",     limit: 4
    t.integer  "reply_type",     limit: 4
    t.text     "content",        limit: 65535
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "order_issues", force: :cascade do |t|
    t.integer  "order_item_id",       limit: 4
    t.integer  "order_issue_item_id", limit: 4
    t.integer  "state",               limit: 4
    t.string   "full_name",           limit: 255
    t.string   "phone",               limit: 255
    t.string   "mail",                limit: 255
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "order_items", force: :cascade do |t|
    t.integer  "order_id",            limit: 4
    t.integer  "supplier_id",         limit: 4
    t.integer  "variant_id",          limit: 4
    t.string   "order_item_number",   limit: 255
    t.string   "state",               limit: 255
    t.decimal  "price",                             precision: 10
    t.integer  "quantity",            limit: 4
    t.decimal  "amount",                            precision: 10
    t.integer  "sales_quantity",      limit: 4
    t.integer  "sales_amount",        limit: 4
    t.integer  "profit_share_ratio",  limit: 4
    t.decimal  "profit_share_amount",               precision: 10
    t.decimal  "payment_fee",                       precision: 10
    t.text     "customer_note",       limit: 65535
    t.text     "treatment_note",      limit: 65535
    t.datetime "completed_at"
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id",           limit: 4
    t.decimal  "shipping_fee",                  precision: 10
    t.decimal  "total",                         precision: 10
    t.integer  "payment_method",    limit: 4
    t.integer  "payment_state",     limit: 4
    t.integer  "invoice_method",    limit: 4
    t.string   "invoice_number",    limit: 255
    t.integer  "delivery_time",     limit: 4
    t.datetime "created_at",                                               null: false
    t.datetime "updated_at",                                               null: false
    t.datetime "checkout_at"
    t.integer  "order_items_count", limit: 4,                  default: 0
  end

  create_table "permissions", force: :cascade do |t|
    t.string   "name",       limit: 255,   default: ""
    t.string   "code",       limit: 255
    t.string   "scope",      limit: 255
    t.text     "comment",    limit: 65535
    t.boolean  "enabled",    limit: 1
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "pk_product_ships", force: :cascade do |t|
    t.integer  "pk_record_id", limit: 4
    t.integer  "prodcut_id",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "pk_product_ships", ["pk_record_id"], name: "index_pk_product_ships_on_record_id", using: :btree
  add_index "pk_product_ships", ["prodcut_id"], name: "index_pk_product_ships_on_prodcut_id", using: :btree

  create_table "pk_records", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.datetime "date"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "pk_records", ["user_id"], name: "index_pk_records_on_user_id", using: :btree

  create_table "plus_or_minus_records", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.text     "reason",     limit: 65535
    t.integer  "point",      limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "position_blocks", force: :cascade do |t|
    t.string   "block_type",              limit: 255
    t.string   "path_code",               limit: 255
    t.string   "name",                    limit: 255
    t.string   "label",                   limit: 255,   default: ""
    t.text     "desc",                    limit: 65535
    t.integer  "sort",                    limit: 4,     default: 99
    t.integer  "max_display",             limit: 4,     default: 0
    t.integer  "position_contents_count", limit: 4,     default: 0
    t.integer  "domain_id",               limit: 4
    t.datetime "datetime_from",                         default: '2012-10-13 12:34:37'
    t.datetime "datetime_to",                           default: '3013-10-13 12:34:37'
    t.boolean  "enabled",                 limit: 1,     default: true
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
  end

  add_index "position_blocks", ["block_type"], name: "index_position_blocks_on_block_type", using: :btree
  add_index "position_blocks", ["domain_id"], name: "index_position_blocks_on_domain_id", using: :btree
  add_index "position_blocks", ["enabled"], name: "index_position_blocks_on_enabled", using: :btree
  add_index "position_blocks", ["max_display"], name: "index_position_blocks_on_max_display", using: :btree
  add_index "position_blocks", ["path_code"], name: "index_position_blocks_on_path_code", using: :btree
  add_index "position_blocks", ["sort"], name: "index_position_blocks_on_sort", using: :btree

  create_table "position_contents", force: :cascade do |t|
    t.integer  "position_block_id", limit: 4
    t.datetime "datetime_from",                   default: '2012-10-13 12:34:37'
    t.datetime "datetime_to",                     default: '3013-10-13 12:34:37'
    t.string   "name",              limit: 255
    t.text     "content",           limit: 65535
    t.string   "resource_type",     limit: 255
    t.integer  "resource_id",       limit: 4
    t.integer  "sort",              limit: 4,     default: 99
    t.boolean  "is_fixed",          limit: 1,     default: true
    t.boolean  "enabled",           limit: 1,     default: true
    t.datetime "created_at",                                                      null: false
    t.datetime "updated_at",                                                      null: false
  end

  add_index "position_contents", ["position_block_id"], name: "index_position_contents_on_position_block_id", using: :btree

  create_table "price_robots", force: :cascade do |t|
    t.string   "source_type",   limit: 255
    t.string   "source_url",    limit: 255
    t.string   "source_name",   limit: 255
    t.string   "hall_type",     limit: 255
    t.string   "brand_name",    limit: 255
    t.string   "product_name",  limit: 255
    t.decimal  "price",                     precision: 20, scale: 4
    t.string   "currency_type", limit: 255
    t.datetime "update_time"
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
  end

  create_table "product_contentfactory_ships", primary_key: "cf_product_id", force: :cascade do |t|
    t.string   "cf_name_normal",    limit: 255
    t.text     "cf_intro_detail",   limit: 65535
    t.string   "cf_currency",       limit: 255
    t.decimal  "cf_price_official",               precision: 20, scale: 4
    t.string   "cf_brand_id",       limit: 255
    t.string   "cf_domain_id",      limit: 255
    t.string   "cf_hall_id",        limit: 255
    t.text     "cf_seo_desc",       limit: 65535
    t.string   "cf_enabled",        limit: 255
    t.integer  "product_id",        limit: 4
    t.datetime "created_at",                                               null: false
    t.datetime "updated_at",                                               null: false
  end

  add_index "product_contentfactory_ships", ["cf_brand_id"], name: "index_product_contentfactory_ships_on_cf_brand_id", using: :btree
  add_index "product_contentfactory_ships", ["cf_currency"], name: "index_product_contentfactory_ships_on_cf_currency", using: :btree
  add_index "product_contentfactory_ships", ["cf_domain_id"], name: "index_product_contentfactory_ships_on_cf_domain_id", using: :btree
  add_index "product_contentfactory_ships", ["cf_hall_id"], name: "index_product_contentfactory_ships_on_cf_hall_id", using: :btree
  add_index "product_contentfactory_ships", ["product_id"], name: "index_product_contentfactory_ships_on_product_id", using: :btree

  create_table "product_hot_pks", force: :cascade do |t|
    t.integer  "product_id",    limit: 4
    t.integer  "pk_prodcut_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "product_hot_pks", ["pk_prodcut_id"], name: "index_product_hot_pks_on_pk_prodcut_id", using: :btree
  add_index "product_hot_pks", ["product_id"], name: "index_product_hot_pks_on_product_id", using: :btree

  create_table "product_image_contentfactory_ships", primary_key: "cf_image_id", force: :cascade do |t|
    t.string   "cf_product_id",    limit: 255
    t.integer  "cf_categorized",   limit: 4
    t.text     "url_origin",       limit: 65535
    t.string   "url_extra_large",  limit: 255
    t.text     "url_big",          limit: 65535
    t.text     "url_medium",       limit: 65535
    t.text     "url_small",        limit: 65535
    t.integer  "product_image_id", limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "product_image_contentfactory_ships", ["cf_categorized"], name: "index_product_image_contentfactory_ships_on_cf_categorized", using: :btree
  add_index "product_image_contentfactory_ships", ["cf_product_id"], name: "index_product_image_contentfactory_ships_on_cf_product_id", using: :btree
  add_index "product_image_contentfactory_ships", ["product_image_id"], name: "index_product_image_contentfactory_ships_on_product_image_id", using: :btree

  create_table "product_images", force: :cascade do |t|
    t.integer  "categorized",     limit: 4,     default: 1
    t.string   "imageable_type",  limit: 255
    t.integer  "imageable_id",    limit: 4
    t.string   "file",            limit: 255
    t.string   "type_text",       limit: 255
    t.text     "url_origin",      limit: 65535
    t.text     "url_extra_large", limit: 65535
    t.text     "url_big",         limit: 65535
    t.text     "url_medium",      limit: 65535
    t.text     "url_small",       limit: 65535
    t.text     "url_thumb",       limit: 65535
    t.integer  "user_id",         limit: 4
    t.boolean  "watermark",       limit: 1,     default: false
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
  end

  add_index "product_images", ["categorized"], name: "index_product_images_on_categorized", using: :btree
  add_index "product_images", ["imageable_id"], name: "index_product_images_on_imageable_id", using: :btree
  add_index "product_images", ["imageable_type"], name: "index_product_images_on_imageable_type", using: :btree
  add_index "product_images", ["type_text"], name: "index_product_images_on_type_text", using: :btree
  add_index "product_images", ["user_id"], name: "index_product_images_on_user_id", using: :btree

  create_table "product_isp_vendor_ships", force: :cascade do |t|
    t.integer  "product_id",    limit: 4, null: false
    t.integer  "isp_vendor_id", limit: 4, null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "product_price_displays", force: :cascade do |t|
    t.integer  "product_id", limit: 4
    t.decimal  "max_price",            precision: 20, scale: 4
    t.decimal  "min_price",            precision: 20, scale: 4
    t.decimal  "avg_price",            precision: 20, scale: 4
    t.date     "date"
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
  end

  add_index "product_price_displays", ["date"], name: "index_product_price_displays_on_date", using: :btree
  add_index "product_price_displays", ["product_id"], name: "index_product_price_displays_on_product_id", using: :btree

  create_table "product_price_robot_ships", force: :cascade do |t|
    t.integer  "product_id",     limit: 4, null: false
    t.integer  "price_robot_id", limit: 4, null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "product_protocol_ships", force: :cascade do |t|
    t.integer  "product_id",      limit: 4
    t.integer  "isp_protocol_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "product_protocol_ships", ["isp_protocol_id"], name: "index_product_protocol_ships_on_isp_protocol_id", using: :btree
  add_index "product_protocol_ships", ["product_id"], name: "index_product_protocol_ships_on_product_id", using: :btree

  create_table "product_spec_displays", force: :cascade do |t|
    t.integer  "product_id",      limit: 4
    t.integer  "spec_class_id",   limit: 4
    t.integer  "spec_id",         limit: 4
    t.string   "spec_name_local", limit: 255
    t.text     "spec_value",      limit: 65535
    t.string   "label_text",      limit: 255
    t.string   "label_style",     limit: 255
    t.integer  "sort",            limit: 4,     default: 0
    t.boolean  "enabled",         limit: 1,     default: true
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  add_index "product_spec_displays", ["enabled"], name: "index_product_spec_displays_on_enabled", using: :btree
  add_index "product_spec_displays", ["product_id"], name: "index_product_spec_displays_on_product_id", using: :btree
  add_index "product_spec_displays", ["sort"], name: "index_product_spec_displays_on_sort", using: :btree
  add_index "product_spec_displays", ["spec_class_id"], name: "index_product_spec_displays_on_spec_class_id", using: :btree
  add_index "product_spec_displays", ["spec_id"], name: "index_product_spec_displays_on_spec_id", using: :btree

  create_table "product_spec_value_contentfactory_ships", primary_key: "cf_spec_value_id", force: :cascade do |t|
    t.string   "cf_spec_id",                 limit: 255
    t.string   "cf_product_id",              limit: 255
    t.string   "value_text",                 limit: 255
    t.string   "value_unit",                 limit: 255
    t.integer  "product_spec_value_ship_id", limit: 4
    t.boolean  "enabled",                    limit: 1
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "product_spec_value_contentfactory_ships", ["cf_product_id"], name: "product_spec_value_cf_ship_cf_product_id", using: :btree
  add_index "product_spec_value_contentfactory_ships", ["cf_spec_id"], name: "product_spec_value_cf_ship_cf_spec_id", using: :btree
  add_index "product_spec_value_contentfactory_ships", ["enabled"], name: "product_spec_value_cf_ship_enabled", using: :btree
  add_index "product_spec_value_contentfactory_ships", ["product_spec_value_ship_id"], name: "product_spec_value_cf_ship_product_spec_value_ship_id", using: :btree

  create_table "product_spec_value_ships", force: :cascade do |t|
    t.integer  "product_id",       limit: 4
    t.integer  "spec_id",          limit: 4
    t.string   "alias_value_text", limit: 255
    t.string   "value_text",       limit: 255
    t.string   "value_unit",       limit: 255
    t.boolean  "enabled",          limit: 1
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "product_spec_value_ships", ["enabled"], name: "index_product_spec_value_ships_on_enabled", using: :btree
  add_index "product_spec_value_ships", ["product_id"], name: "index_product_spec_value_ships_on_product_id", using: :btree
  add_index "product_spec_value_ships", ["spec_id", "value_text", "enabled"], name: "index_ProSpecValueShips_on_spec_id_and_value_text_and_enab", using: :btree
  add_index "product_spec_value_ships", ["spec_id"], name: "index_product_spec_value_ships_on_spec_id", using: :btree
  add_index "product_spec_value_ships", ["value_text"], name: "index_product_spec_value_ships_on_value_text", using: :btree
  add_index "product_spec_value_ships", ["value_unit"], name: "index_product_spec_value_ships_on_value_unit", using: :btree

  create_table "products", force: :cascade do |t|
    t.integer  "brand_id",            limit: 4
    t.integer  "domain_id",           limit: 4
    t.integer  "hall_id",             limit: 4
    t.string   "name_normal",         limit: 255
    t.string   "name_local",          limit: 255
    t.string   "url_keyword",         limit: 255
    t.decimal  "price_official",                    precision: 20, scale: 4
    t.decimal  "price_avg_quote",                   precision: 20, scale: 4
    t.string   "currency",            limit: 255
    t.boolean  "enabled",             limit: 1,                              default: true
    t.boolean  "is_quote",            limit: 1,                              default: false
    t.datetime "quote_date"
    t.datetime "quote_close_date"
    t.integer  "market_status",       limit: 4,                              default: 177
    t.date     "market_date"
    t.string   "market_date_desc",    limit: 255
    t.text     "intro_abstract",      limit: 65535
    t.text     "intro_detail",        limit: 65535
    t.integer  "pageview_week",       limit: 4
    t.integer  "pageview",            limit: 4
    t.integer  "pageview_week_price", limit: 4
    t.integer  "pageview_price",      limit: 4
    t.integer  "creator_id",          limit: 4
    t.text     "seo_desc",            limit: 65535
    t.text     "keyword",             limit: 65535
    t.text     "title_aliases",       limit: 65535
    t.string   "part_number",         limit: 255
    t.datetime "created_at",                                                                 null: false
    t.datetime "updated_at",                                                                 null: false
  end

  add_index "products", ["brand_id"], name: "index_products_on_brand_id", using: :btree
  add_index "products", ["creator_id"], name: "index_products_on_creator_id", using: :btree
  add_index "products", ["domain_id"], name: "index_products_on_domain_id", using: :btree
  add_index "products", ["enabled"], name: "index_products_on_enabled", using: :btree
  add_index "products", ["hall_id"], name: "index_products_on_hall_id", using: :btree
  add_index "products", ["is_quote"], name: "index_products_on_is_quote", using: :btree
  add_index "products", ["market_status"], name: "index_products_on_market_status", using: :btree
  add_index "products", ["pageview"], name: "index_products_on_pageview", using: :btree
  add_index "products", ["pageview_price"], name: "index_products_on_pageview_price", using: :btree
  add_index "products", ["pageview_week"], name: "index_products_on_pageview_week", using: :btree
  add_index "products", ["pageview_week_price"], name: "index_products_on_pageview_week_price", using: :btree
  add_index "products", ["price_avg_quote"], name: "index_products_on_price_avg_quote", using: :btree

  create_table "question_categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "sort",       limit: 4,   default: 0,    null: false
    t.integer  "domain_id",  limit: 4
    t.boolean  "enabled",    limit: 1,   default: true, null: false
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "question_categories", ["domain_id"], name: "index_question_categories_on_domain_id", using: :btree
  add_index "question_categories", ["enabled"], name: "index_question_categories_on_enabled", using: :btree

  create_table "question_items", force: :cascade do |t|
    t.string   "name",                 limit: 255
    t.integer  "sort",                 limit: 4,   default: 0,    null: false
    t.integer  "question_category_id", limit: 4
    t.integer  "domain_id",            limit: 4,                  null: false
    t.boolean  "enabled",              limit: 1,   default: true, null: false
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "question_items", ["domain_id"], name: "index_question_items_on_domain_id", using: :btree
  add_index "question_items", ["enabled"], name: "index_question_items_on_enabled", using: :btree
  add_index "question_items", ["question_category_id"], name: "index_question_items_on_question_category_id", using: :btree

  create_table "question_replies", force: :cascade do |t|
    t.integer  "question_id", limit: 4
    t.text     "content",     limit: 65535
    t.integer  "reply_from",  limit: 4
    t.integer  "replier_id",  limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "question_replies", ["question_id"], name: "index_question_replies_on_question_id", using: :btree
  add_index "question_replies", ["replier_id"], name: "index_question_replies_on_replier_id", using: :btree
  add_index "question_replies", ["reply_from"], name: "index_question_replies_on_reply_from", using: :btree

  create_table "question_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "sort",       limit: 4
    t.integer  "category",   limit: 4
    t.integer  "domain_id",  limit: 4
    t.boolean  "enabled",    limit: 1
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "question_types", ["category"], name: "index_question_types_on_category", using: :btree
  add_index "question_types", ["domain_id"], name: "index_question_types_on_domain_id", using: :btree
  add_index "question_types", ["enabled"], name: "index_question_types_on_enabled", using: :btree
  add_index "question_types", ["sort"], name: "index_question_types_on_sort", using: :btree

  create_table "questions", force: :cascade do |t|
    t.integer  "question_type_id", limit: 4
    t.string   "resource_type",    limit: 255
    t.integer  "resource_id",      limit: 4
    t.text     "content",          limit: 65535
    t.boolean  "is_readed",        limit: 1
    t.boolean  "is_reply",         limit: 1
    t.integer  "status",           limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.text     "anonymous_email",  limit: 65535
    t.text     "anonymous_name",   limit: 65535
    t.text     "anonymous_phone",  limit: 65535
  end

  add_index "questions", ["is_readed"], name: "index_questions_on_is_readed", using: :btree
  add_index "questions", ["is_reply"], name: "index_questions_on_is_reply", using: :btree
  add_index "questions", ["question_type_id"], name: "index_questions_on_question_type_id", using: :btree
  add_index "questions", ["resource_id"], name: "index_questions_on_resource_id", using: :btree
  add_index "questions", ["resource_type"], name: "index_questions_on_resource_type", using: :btree
  add_index "questions", ["status"], name: "index_questions_on_status", using: :btree

  create_table "regions", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.boolean  "enabled",    limit: 1,   default: true
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "regions", ["enabled"], name: "index_regions_on_enabled", using: :btree

  create_table "remittance_infos", force: :cascade do |t|
    t.integer  "supplier_id", limit: 4
    t.string   "unit",        limit: 255
    t.string   "bank",        limit: 255
    t.string   "branch",      limit: 255
    t.string   "number",      limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "return_infos", force: :cascade do |t|
    t.integer  "order_item_id", limit: 4
    t.string   "number",        limit: 255
    t.integer  "quantity",      limit: 4
    t.decimal  "amount",                      precision: 10
    t.integer  "type",          limit: 4
    t.integer  "category",      limit: 4
    t.text     "reson",         limit: 65535
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  create_table "revisions", force: :cascade do |t|
    t.integer  "supplier_product_id", limit: 4
    t.string   "aasm_state",          limit: 255
    t.string   "reason",              limit: 255
    t.text     "reply",               limit: 65535
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name",       limit: 255, default: ""
    t.integer  "level",      limit: 4,   default: 0,     null: false
    t.boolean  "enabled",    limit: 1,   default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "rtmms", force: :cascade do |t|
    t.string   "who",        limit: 255
    t.string   "key",        limit: 255
    t.string   "val",        limit: 255
    t.text     "msg",        limit: 65535
    t.string   "state",      limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "setting_ses", force: :cascade do |t|
    t.string   "access_key_id",     limit: 255
    t.string   "secret_access_key", limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "shipments", force: :cascade do |t|
    t.integer  "order_item_id",   limit: 4
    t.integer  "logistics_id",    limit: 4
    t.string   "tracking_number", limit: 255
    t.string   "tracking_url",    limit: 255
    t.datetime "shipped_at"
    t.datetime "arrived_at"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "shop_announce_ships", force: :cascade do |t|
    t.integer  "shop_id",          limit: 4
    t.integer  "shop_announce_id", limit: 4
    t.boolean  "is_readed",        limit: 1, default: false
    t.boolean  "enabled",          limit: 1, default: true
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  add_index "shop_announce_ships", ["shop_announce_id"], name: "index_shop_announce_ships_on_shop_announce_id", using: :btree
  add_index "shop_announce_ships", ["shop_id"], name: "index_shop_announce_ships_on_shop_id", using: :btree

  create_table "shop_announces", force: :cascade do |t|
    t.string   "title",        limit: 255
    t.text     "content",      limit: 65535
    t.integer  "region_id",    limit: 4
    t.integer  "city_id",      limit: 4
    t.integer  "publisher_id", limit: 4
    t.date     "date_from"
    t.date     "date_to"
    t.integer  "scope_status", limit: 4
    t.integer  "domain_id",    limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "shop_announces", ["city_id"], name: "index_shop_announces_on_city_id", using: :btree
  add_index "shop_announces", ["date_from"], name: "index_shop_announces_on_date_from", using: :btree
  add_index "shop_announces", ["date_to"], name: "index_shop_announces_on_date_to", using: :btree
  add_index "shop_announces", ["domain_id"], name: "index_shop_announces_on_domain_id", using: :btree
  add_index "shop_announces", ["publisher_id"], name: "index_shop_announces_on_publisher_id", using: :btree
  add_index "shop_announces", ["region_id"], name: "index_shop_announces_on_region_id", using: :btree

  create_table "shop_groups", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.boolean  "enabled",    limit: 1
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "shop_groups", ["enabled"], name: "index_shop_groups_on_enabled", using: :btree

  create_table "shop_hall_quote_ships", force: :cascade do |t|
    t.integer  "shop_id",    limit: 4
    t.integer  "hall_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "shop_hall_quote_ships", ["hall_id"], name: "index_shop_hall_quote_ships_on_hall_id", using: :btree
  add_index "shop_hall_quote_ships", ["shop_id"], name: "index_shop_hall_quote_ships_on_shop_id", using: :btree

  create_table "shop_images", force: :cascade do |t|
    t.integer  "categorized",    limit: 4,     default: 1
    t.string   "imageable_type", limit: 255
    t.integer  "imageable_id",   limit: 4
    t.string   "file",           limit: 255
    t.string   "type_text",      limit: 255
    t.text     "url_origin",     limit: 65535
    t.text     "url_big",        limit: 65535
    t.text     "url_medium",     limit: 65535
    t.text     "url_small",      limit: 65535
    t.text     "url_thumb",      limit: 65535
    t.integer  "user_id",        limit: 4
    t.boolean  "watermark",      limit: 1,     default: false
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  add_index "shop_images", ["categorized"], name: "index_shop_images_on_categorized", using: :btree
  add_index "shop_images", ["imageable_id"], name: "index_shop_images_on_imageable_id", using: :btree
  add_index "shop_images", ["imageable_type"], name: "index_shop_images_on_imageable_type", using: :btree
  add_index "shop_images", ["type_text"], name: "index_shop_images_on_type_text", using: :btree
  add_index "shop_images", ["user_id"], name: "index_shop_images_on_user_id", using: :btree

  create_table "shop_isp_fee_discounts", force: :cascade do |t|
    t.integer  "shop_id",          limit: 4
    t.integer  "isp_fee_combo_id", limit: 4
    t.integer  "discount",         limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "shop_isp_fee_discounts", ["isp_fee_combo_id"], name: "index_shop_isp_fee_discounts_on_isp_fee_combo_id", using: :btree
  add_index "shop_isp_fee_discounts", ["shop_id"], name: "index_shop_isp_fee_discounts_on_shop_id", using: :btree

  create_table "shop_isp_fee_discounts_backup", force: :cascade do |t|
    t.integer  "shop_id",          limit: 4
    t.integer  "isp_fee_combo_id", limit: 4
    t.integer  "discount",         limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "shop_isp_fee_discounts_backup", ["isp_fee_combo_id"], name: "index_shop_isp_fee_discounts_on_isp_fee_combo_id", using: :btree
  add_index "shop_isp_fee_discounts_backup", ["shop_id"], name: "index_shop_isp_fee_discounts_on_shop_id", using: :btree

  create_table "shop_payment_ships", force: :cascade do |t|
    t.integer  "shop_id",         limit: 4, null: false
    t.integer  "shop_payment_id", limit: 4, null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "shop_payment_ships", ["shop_id"], name: "index_shop_payment_ships_on_shop_id", using: :btree
  add_index "shop_payment_ships", ["shop_payment_id"], name: "index_shop_payment_ships_on_shop_payment_id", using: :btree

  create_table "shop_payments", force: :cascade do |t|
    t.string   "name",       limit: 255,                null: false
    t.integer  "domain_id",  limit: 4
    t.boolean  "enabled",    limit: 1,   default: true
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "shop_product_default_descs", force: :cascade do |t|
    t.integer  "shop_id",    limit: 4
    t.integer  "hall_id",    limit: 4
    t.text     "desc",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "shop_product_quote_lock_logs", force: :cascade do |t|
    t.integer  "city_id",                      limit: 4
    t.integer  "product_id",                   limit: 4
    t.decimal  "min_lite_price",                         precision: 20, scale: 4
    t.decimal  "max_lite_price",                         precision: 20, scale: 4
    t.decimal  "min_full_price",                         precision: 20, scale: 4
    t.decimal  "max_full_price",                         precision: 20, scale: 4
    t.datetime "date_to"
    t.boolean  "is_for_all",                   limit: 1,                          default: true
    t.datetime "update_time_of_original_data"
    t.datetime "created_at",                                                                     null: false
    t.datetime "updated_at",                                                                     null: false
  end

  add_index "shop_product_quote_lock_logs", ["city_id"], name: "index_shop_product_quote_lock_logs_on_city_id", using: :btree
  add_index "shop_product_quote_lock_logs", ["is_for_all"], name: "index_shop_product_quote_lock_logs_on_is_for_all", using: :btree
  add_index "shop_product_quote_lock_logs", ["product_id"], name: "index_shop_product_quote_lock_logs_on_product_id", using: :btree

  create_table "shop_product_quote_locks", force: :cascade do |t|
    t.integer  "city_id",        limit: 4
    t.integer  "product_id",     limit: 4
    t.decimal  "min_lite_price",           precision: 20, scale: 4
    t.decimal  "max_lite_price",           precision: 20, scale: 4
    t.decimal  "min_full_price",           precision: 20, scale: 4
    t.decimal  "max_full_price",           precision: 20, scale: 4
    t.datetime "date_to"
    t.boolean  "is_for_all",     limit: 1,                          default: true
    t.datetime "created_at",                                                       null: false
    t.datetime "updated_at",                                                       null: false
  end

  add_index "shop_product_quote_locks", ["city_id"], name: "index_shop_product_quote_locks_on_city_id", using: :btree
  add_index "shop_product_quote_locks", ["is_for_all"], name: "index_shop_product_quote_locks_on_is_for_all", using: :btree
  add_index "shop_product_quote_locks", ["product_id"], name: "index_shop_product_quote_locks_on_product_id", using: :btree

  create_table "shop_promotes", force: :cascade do |t|
    t.integer  "promote_type",  limit: 4
    t.integer  "shop_id",       limit: 4
    t.integer  "product_id",    limit: 4
    t.integer  "hall_id",       limit: 4
    t.integer  "shop_quote_id", limit: 4
    t.text     "desc",          limit: 65535
    t.datetime "date_from"
    t.datetime "date_to"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "shop_promotes", ["hall_id"], name: "index_shop_promotes_on_hall_id", using: :btree
  add_index "shop_promotes", ["product_id"], name: "index_shop_promotes_on_product_id", using: :btree
  add_index "shop_promotes", ["promote_type"], name: "index_shop_promotes_on_promote_type", using: :btree
  add_index "shop_promotes", ["shop_id"], name: "index_shop_promotes_on_shop_id", using: :btree
  add_index "shop_promotes", ["shop_quote_id"], name: "index_shop_promotes_on_shop_quote_id", using: :btree

  create_table "shop_quote_logs", force: :cascade do |t|
    t.integer  "shop_id",                      limit: 4
    t.decimal  "quote_price",                                precision: 20, scale: 4
    t.decimal  "full_quote_price",                           precision: 20, scale: 4
    t.integer  "product_id",                   limit: 4
    t.text     "intro",                        limit: 65535
    t.integer  "hall_id",                      limit: 4
    t.datetime "update_time"
    t.boolean  "enabled",                      limit: 1,                              default: true
    t.datetime "update_time_of_original_data"
    t.datetime "created_at",                                                                         null: false
    t.datetime "updated_at",                                                                         null: false
  end

  add_index "shop_quote_logs", ["enabled"], name: "index_shop_quote_logs_on_enabled", using: :btree
  add_index "shop_quote_logs", ["hall_id"], name: "index_shop_quote_logs_on_hall_id", using: :btree
  add_index "shop_quote_logs", ["product_id"], name: "index_shop_quote_logs_on_product_id", using: :btree
  add_index "shop_quote_logs", ["shop_id"], name: "index_shop_quote_logs_on_shop_id", using: :btree

  create_table "shop_quotes", force: :cascade do |t|
    t.integer  "shop_id",          limit: 4
    t.decimal  "quote_price",                    precision: 20, scale: 4
    t.decimal  "full_quote_price",               precision: 20, scale: 4
    t.integer  "product_id",       limit: 4
    t.text     "intro",            limit: 65535
    t.integer  "hall_id",          limit: 4
    t.datetime "update_time"
    t.boolean  "enabled",          limit: 1,                              default: true
    t.datetime "created_at",                                                             null: false
    t.datetime "updated_at",                                                             null: false
  end

  add_index "shop_quotes", ["enabled"], name: "index_shop_quotes_on_enabled", using: :btree
  add_index "shop_quotes", ["hall_id"], name: "index_shop_quotes_on_hall_id", using: :btree
  add_index "shop_quotes", ["product_id"], name: "index_shop_quotes_on_product_id", using: :btree
  add_index "shop_quotes", ["shop_id", "product_id", "hall_id", "enabled"], name: "index_shop_quotes_on_shop_product_hall_enabled", using: :btree
  add_index "shop_quotes", ["shop_id"], name: "index_shop_quotes_on_shop_id", using: :btree

  create_table "shop_service_ships", force: :cascade do |t|
    t.integer  "shop_id",         limit: 4, null: false
    t.integer  "shop_service_id", limit: 4, null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "shop_service_ships", ["shop_id"], name: "index_shop_service_ships_on_shop_id", using: :btree
  add_index "shop_service_ships", ["shop_service_id"], name: "index_shop_service_ships_on_shop_service_id", using: :btree

  create_table "shop_services", force: :cascade do |t|
    t.string   "name",       limit: 255,                null: false
    t.integer  "domain_id",  limit: 4
    t.boolean  "enabled",    limit: 1,   default: true
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "shopping_carts", force: :cascade do |t|
    t.integer  "variant_id",  limit: 4
    t.integer  "user_id",     limit: 4
    t.integer  "quantity",    limit: 4
    t.boolean  "is_tracking", limit: 1
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "shops", force: :cascade do |t|
    t.string   "name",                     limit: 255
    t.text     "intro",                    limit: 65535
    t.integer  "contract_status",          limit: 4
    t.date     "contract_deadline_date"
    t.integer  "shop_group_id",            limit: 4
    t.integer  "forum_id",                 limit: 4
    t.integer  "owner_user_id",            limit: 4
    t.string   "owner_name",               limit: 255
    t.string   "telphone",                 limit: 255
    t.string   "cellphone",                limit: 255
    t.string   "email",                    limit: 255
    t.integer  "city_id",                  limit: 4
    t.integer  "district_id",              limit: 4
    t.string   "address",                  limit: 255
    t.string   "longitude",                limit: 255
    t.string   "latitude",                 limit: 255
    t.boolean  "is_use_streetview",        limit: 1,     default: false
    t.string   "weekday_office_hour_from", limit: 255
    t.string   "weekday_office_hour_to",   limit: 255
    t.string   "holiday_office_hour_from", limit: 255
    t.string   "holiday_office_hour_to",   limit: 255
    t.string   "official_holiday",         limit: 255
    t.boolean  "email_enabled",            limit: 1
    t.integer  "domain_id",                limit: 4
    t.integer  "status",                   limit: 4,     default: 0,     null: false
    t.boolean  "have_new_quote",           limit: 1
    t.boolean  "have_new_price_lock",      limit: 1
    t.datetime "created_at",                                             null: false
    t.datetime "updated_at",                                             null: false
  end

  add_index "shops", ["city_id"], name: "index_shops_on_city_id", using: :btree
  add_index "shops", ["contract_deadline_date"], name: "index_shops_on_contract_deadline_date", using: :btree
  add_index "shops", ["contract_status"], name: "index_shops_on_contract_status", using: :btree
  add_index "shops", ["district_id"], name: "index_shops_on_district_id", using: :btree
  add_index "shops", ["forum_id"], name: "index_shops_on_forum_id", using: :btree
  add_index "shops", ["owner_user_id"], name: "index_shops_on_owner_user_id", using: :btree
  add_index "shops", ["shop_group_id"], name: "index_shops_on_shop_group_id", using: :btree
  add_index "shops", ["status"], name: "index_shops_on_status", using: :btree

  create_table "simple_captcha_data", force: :cascade do |t|
    t.string   "key",        limit: 40
    t.string   "value",      limit: 6
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "simple_captcha_data", ["key"], name: "idx_key", using: :btree

  create_table "spec_class_contentfactory_ships", primary_key: "cf_spec_class_id", force: :cascade do |t|
    t.string   "name_local",    limit: 255
    t.integer  "spec_class_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "spec_class_contentfactory_ships", ["spec_class_id"], name: "index_spec_class_contentfactory_ships_on_spec_class_id", using: :btree

  create_table "spec_classes", force: :cascade do |t|
    t.string   "name_local", limit: 255
    t.string   "name_alias", limit: 255
    t.integer  "sort",       limit: 4
    t.integer  "hall_id",    limit: 4
    t.boolean  "enabled",    limit: 1,   default: true
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "spec_classes", ["enabled"], name: "index_spec_classes_on_enabled", using: :btree
  add_index "spec_classes", ["hall_id"], name: "index_spec_classes_on_hall_id", using: :btree
  add_index "spec_classes", ["sort"], name: "index_spec_classes_on_sort", using: :btree

  create_table "spec_contentfactory_ships", primary_key: "cf_spec_id", force: :cascade do |t|
    t.string   "cf_spec_class_id", limit: 255
    t.string   "name_local",       limit: 255
    t.integer  "spec_id",          limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "spec_contentfactory_ships", ["cf_spec_class_id"], name: "index_spec_contentfactory_ships_on_cf_spec_class_id", using: :btree
  add_index "spec_contentfactory_ships", ["spec_id"], name: "index_spec_contentfactory_ships_on_spec_id", using: :btree

  create_table "spec_value_groups", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.text     "content",    limit: 65535
    t.integer  "hall_id",    limit: 4
    t.boolean  "enabled",    limit: 1
    t.integer  "sort",       limit: 4
    t.boolean  "precision",  limit: 1
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "spec_value_groups", ["enabled"], name: "index_spec_value_groups_on_enabled", using: :btree
  add_index "spec_value_groups", ["name"], name: "index_spec_value_groups_on_name", using: :btree
  add_index "spec_value_groups", ["sort"], name: "index_spec_value_groups_on_sort", using: :btree

  create_table "specs", force: :cascade do |t|
    t.string   "name_local",    limit: 255
    t.string   "name_alias",    limit: 255
    t.text     "desc",          limit: 65535
    t.integer  "sort",          limit: 4
    t.integer  "spec_class_id", limit: 4
    t.boolean  "is_focus",      limit: 1,     default: false
    t.boolean  "enabled",       limit: 1,     default: true
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  add_index "specs", ["enabled"], name: "index_specs_on_enabled", using: :btree
  add_index "specs", ["is_focus"], name: "index_specs_on_is_simple_display", using: :btree
  add_index "specs", ["sort"], name: "index_specs_on_sort", using: :btree
  add_index "specs", ["spec_class_id"], name: "index_specs_on_spec_class_id", using: :btree

  create_table "statistics_displays", force: :cascade do |t|
    t.string   "name_code",  limit: 255,   null: false
    t.text     "obj_ids",    limit: 65535, null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "supplier_gift_resource_ships", force: :cascade do |t|
    t.integer  "supplier_gift_id", limit: 4
    t.string   "resource_type",    limit: 255
    t.integer  "resource_id",      limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "supplier_gifts", force: :cascade do |t|
    t.integer  "supplier_id", limit: 4
    t.string   "name",        limit: 255
    t.integer  "total",       limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "supplier_images", force: :cascade do |t|
    t.integer  "categorized",     limit: 4
    t.integer  "imageable_id",    limit: 4
    t.string   "imageable_type",  limit: 255
    t.string   "file",            limit: 255
    t.string   "type_text",       limit: 255
    t.text     "url_origin",      limit: 65535
    t.text     "url_extra_large", limit: 65535
    t.text     "url_big",         limit: 65535
    t.text     "url_medium",      limit: 65535
    t.text     "url_small",       limit: 65535
    t.text     "url_thumb",       limit: 65535
    t.boolean  "watermark",       limit: 1
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "supplier_infos", force: :cascade do |t|
    t.integer  "supplier_id",              limit: 4,     null: false
    t.string   "company_tax_id",           limit: 255
    t.string   "company_name",             limit: 255
    t.string   "leader",                   limit: 255
    t.string   "headcount",                limit: 255
    t.string   "capital",                  limit: 255
    t.date     "since"
    t.string   "telephone",                limit: 255
    t.string   "fax",                      limit: 255
    t.integer  "city_id",                  limit: 4
    t.integer  "district_id",              limit: 4
    t.string   "address",                  limit: 255
    t.integer  "registration_city_id",     limit: 4
    t.integer  "registration_district_id", limit: 4
    t.string   "registration_address",     limit: 255
    t.text     "intro",                    limit: 65535
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "supplier_products", force: :cascade do |t|
    t.integer  "domain_id",      limit: 4
    t.integer  "supplier_id",    limit: 4
    t.integer  "product_id",     limit: 4
    t.string   "number",         limit: 255
    t.string   "apply_status",   limit: 255
    t.string   "status",         limit: 255
    t.text     "description",    limit: 65535
    t.integer  "profit_share",   limit: 4
    t.decimal  "price",                        precision: 10
    t.string   "content_desc",   limit: 255
    t.integer  "source",         limit: 4
    t.string   "origin",         limit: 255
    t.text     "feature",        limit: 65535
    t.text     "notice",         limit: 65535
    t.integer  "variants_count", limit: 4,                    default: 0
    t.datetime "created_at",                                              null: false
    t.datetime "updated_at",                                              null: false
  end

  create_table "supplier_profit_shares", force: :cascade do |t|
    t.integer  "supplier_id",     limit: 4,   null: false
    t.integer  "profitable_id",   limit: 4
    t.string   "profitable_type", limit: 255
    t.integer  "profit_sharing",  limit: 4
    t.boolean  "enabled",         limit: 1
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.integer  "domain_id",         limit: 4,                   null: false
    t.integer  "owner_user_id",     limit: 4
    t.string   "number",            limit: 255
    t.integer  "status",            limit: 4,   default: 1
    t.boolean  "enabled",           limit: 1,   default: false
    t.boolean  "is_order_handling", limit: 1,   default: false
    t.string   "contact_name",      limit: 255
    t.string   "contact_telephone", limit: 255
    t.string   "contact_phone",     limit: 255
    t.string   "contact_mail",      limit: 255
    t.string   "main",              limit: 255
    t.string   "featured",          limit: 255
    t.string   "others",            limit: 255
    t.string   "notice",            limit: 255
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
  end

  create_table "tmp_shopping_carts", force: :cascade do |t|
    t.string   "current_ip", limit: 255
    t.integer  "variant_id", limit: 4
    t.integer  "quantity",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "topic_contents", force: :cascade do |t|
    t.text     "content",        limit: 65535
    t.integer  "topic_id",       limit: 4
    t.integer  "topic_style_id", limit: 4
    t.integer  "sort",           limit: 4,     default: 1
    t.boolean  "enabled",        limit: 1,     default: true, null: false
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  add_index "topic_contents", ["sort", "enabled"], name: "index_topic_contents_on_sort_and_enabled", using: :btree
  add_index "topic_contents", ["topic_id"], name: "index_topic_contents_on_topic_id", using: :btree
  add_index "topic_contents", ["topic_style_id"], name: "index_topic_contents_on_topic_style_id", using: :btree

  create_table "topic_styles", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "limit_num",  limit: 4
    t.string   "code",       limit: 255
    t.string   "image",      limit: 255
    t.text     "basic_hash", limit: 65535
    t.boolean  "enabled",    limit: 1,     default: true, null: false
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  add_index "topic_styles", ["enabled"], name: "index_topic_styles_on_enabled", using: :btree

  create_table "topic_templates", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.text     "style_ids",  limit: 65535
    t.boolean  "enabled",    limit: 1,     default: true
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  add_index "topic_templates", ["enabled"], name: "index_topic_templates_on_enabled", using: :btree

  create_table "topics", force: :cascade do |t|
    t.string   "name",              limit: 255
    t.string   "url_code",          limit: 255
    t.string   "background",        limit: 255
    t.string   "title",             limit: 255
    t.string   "file",              limit: 255
    t.string   "seo_desc",          limit: 255
    t.string   "keyword",           limit: 255
    t.string   "ad_code",           limit: 255
    t.integer  "topic_template_id", limit: 4
    t.integer  "domain_id",         limit: 4
    t.boolean  "enabled",           limit: 1,   default: true, null: false
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  add_index "topics", ["domain_id"], name: "index_topics_on_domain_id", using: :btree
  add_index "topics", ["enabled"], name: "index_topics_on_enabled", using: :btree
  add_index "topics", ["name"], name: "index_topics_on_name", using: :btree

  create_table "user_control_scopes", force: :cascade do |t|
    t.integer  "user_permission_ship_id", limit: 4
    t.string   "resource_type",           limit: 255
    t.integer  "resource_id",             limit: 4
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "user_control_scopes", ["resource_type", "resource_id"], name: "index_user_control_scopes_on_resource_type_and_resource_id", using: :btree
  add_index "user_control_scopes", ["user_permission_ship_id"], name: "index_user_control_scopes_on_user_id", using: :btree

  create_table "user_favorites", force: :cascade do |t|
    t.integer  "user_id",       limit: 4
    t.string   "resource_type", limit: 255
    t.integer  "resource_id",   limit: 4
    t.string   "content",       limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "user_friends", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "friend_id",  limit: 4
    t.text     "memo",       limit: 65535
    t.integer  "enabled",    limit: 1
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "user_gifts", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.integer  "required_bonus", limit: 4
    t.integer  "price_official", limit: 4
    t.integer  "gift_quantity",  limit: 4
    t.integer  "gift_limit",     limit: 4
    t.string   "url",            limit: 255
    t.text     "desc",           limit: 65535
    t.integer  "domain_id",      limit: 4
    t.integer  "status",         limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "user_images", force: :cascade do |t|
    t.string   "file",       limit: 255
    t.integer  "user_id",    limit: 4
    t.integer  "category",   limit: 4
    t.string   "url_thumb",  limit: 255
    t.string   "url_origin", limit: 255
    t.string   "url_large",  limit: 255
    t.string   "url_medium", limit: 255
    t.text     "url_small",  limit: 65535
    t.boolean  "enabled",    limit: 1,     default: true
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  add_index "user_images", ["user_id", "category"], name: "index_user_images_on_user_id_and_category", using: :btree

  create_table "user_messages", force: :cascade do |t|
    t.string   "title",        limit: 255
    t.string   "content",      limit: 255
    t.integer  "from_user_id", limit: 4
    t.integer  "to_user_id",   limit: 4
    t.integer  "parent_id",    limit: 4
    t.boolean  "is_readed",    limit: 1,   default: false
    t.integer  "chat_room_id", limit: 4
    t.boolean  "enabled",      limit: 1,   default: true
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "user_permission_ships", force: :cascade do |t|
    t.integer  "user_id",       limit: 4
    t.integer  "permission_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "user_permission_ships", ["permission_id"], name: "index_user_permission_ships_on_permission_id", using: :btree
  add_index "user_permission_ships", ["user_id"], name: "index_user_permission_ships_on_user_id", using: :btree

  create_table "user_profiles", force: :cascade do |t|
    t.integer  "user_id",           limit: 4
    t.string   "name",              limit: 255
    t.integer  "gender",            limit: 4
    t.integer  "city_id",           limit: 4
    t.integer  "district_id",       limit: 4
    t.text     "address",           limit: 65535
    t.string   "telphone",          limit: 255
    t.string   "cellphone",         limit: 255
    t.datetime "birthday"
    t.integer  "phone_status",      limit: 4
    t.integer  "send_count",        limit: 4
    t.datetime "send_time"
    t.integer  "verification_code", limit: 4
    t.integer  "income_id",         limit: 4
    t.integer  "education_id",      limit: 4
    t.integer  "career_id",         limit: 4
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "user_profiles", ["career_id"], name: "index_user_profiles_on_career_id", using: :btree
  add_index "user_profiles", ["city_id"], name: "index_user_profiles_on_city_id", using: :btree
  add_index "user_profiles", ["district_id"], name: "index_user_profiles_on_district_id", using: :btree
  add_index "user_profiles", ["education_id"], name: "index_user_profiles_on_education_id", using: :btree
  add_index "user_profiles", ["income_id"], name: "index_user_profiles_on_income_id", using: :btree
  add_index "user_profiles", ["user_id"], name: "index_user_profiles_on_user_id", using: :btree

  create_table "user_settings", force: :cascade do |t|
    t.string   "name",                 limit: 255
    t.string   "resource_type",        limit: 255
    t.integer  "basic_role_mapper_id", limit: 4
    t.integer  "restriction",          limit: 4
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "user_surveys", force: :cascade do |t|
    t.integer  "surveys_type", limit: 4
    t.string   "name",         limit: 255
    t.text     "sort",         limit: 65535
    t.boolean  "enabled",      limit: 1
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "account",                limit: 255
    t.string   "email",                  limit: 255,   default: "", null: false
    t.string   "nickname",               limit: 255
    t.integer  "status",                 limit: 4
    t.integer  "bonus",                  limit: 4,     default: 0
    t.integer  "role_id",                limit: 4
    t.integer  "exp",                    limit: 4,     default: 0
    t.integer  "posts",                  limit: 4,     default: 0
    t.string   "password_salt",          limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.string   "encrypted_password",     limit: 255,   default: "", null: false
    t.text     "publish_stream_token",   limit: 65535
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
  end

  add_index "users", ["account"], name: "account", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["role_id"], name: "index_users_on_user_role_id", using: :btree
  add_index "users", ["status"], name: "index_users_on_status", using: :btree

  create_table "variants", force: :cascade do |t|
    t.integer  "variantable_id",   limit: 4
    t.string   "variantable_type", limit: 255
    t.string   "name",             limit: 255
    t.integer  "total_supply",     limit: 4,   default: 0
    t.integer  "count_on_hand",    limit: 4,   default: 0
    t.integer  "adjustment",       limit: 4
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "vendor_protocol_ships", force: :cascade do |t|
    t.integer  "isp_vendor_id",   limit: 4
    t.integer  "isp_protocol_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "vendor_protocol_ships", ["isp_protocol_id"], name: "index_vendor_protocol_ships_on_isp_protocol_id", using: :btree
  add_index "vendor_protocol_ships", ["isp_vendor_id"], name: "index_vendor_protocol_ships_on_isp_vendor_id", using: :btree

  create_table "vote_details", force: :cascade do |t|
    t.string   "option_name",     limit: 255
    t.integer  "vote_id",         limit: 4
    t.boolean  "enabled",         limit: 1
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.integer  "vote_logs_count", limit: 4,   default: 0
  end

  create_table "vote_logs", force: :cascade do |t|
    t.integer  "vote_detail_id", limit: 4
    t.integer  "user_id",        limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "votes", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "article_id", limit: 4
    t.integer  "domain_id",  limit: 4
    t.boolean  "enabled",    limit: 1
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "votes", ["domain_id"], name: "index_votes_on_domain_id", using: :btree

end
