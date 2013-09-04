class CreateSeoSeoPages < ActiveRecord::Migration
  def change
    create_table :seo_seo_pages do |t|
      t.string :page_title
      t.string :meta_keywords
      t.string :meta_description
      t.string :url_identifier

      t.timestamps
    end
  end
end
