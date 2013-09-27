# This migration comes from seo_pages (originally 20130905104642)
class CreateSeoPagesSeoPages < ActiveRecord::Migration
  def change
    create_table :seo_pages_seo_pages do |t|
      t.string :url_identifier
      t.string :page_title
      t.string :meta_keywords
      t.string :meta_description

      t.timestamps
    end
  end
end
