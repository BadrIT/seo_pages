class CreateSeoPagesSeoPageDefaults < ActiveRecord::Migration
  def change
    create_table :seo_pages_seo_page_defaults do |t|
      t.string :page_title
      t.string :meta_keywords
      t.string :meta_description

      t.timestamps
    end
  end
end
