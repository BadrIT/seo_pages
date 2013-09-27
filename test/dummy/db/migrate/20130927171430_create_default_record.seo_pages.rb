# This migration comes from seo_pages (originally 20130905104716)
class CreateDefaultRecord < ActiveRecord::Migration
   def up
    SeoPages::SeoPageDefault.create(page_title: 'Edit Page Title Default', 
                                    meta_keywords: 'Edit Page Meta Keywords Default',
                                    meta_description: 'Edit Page Meta Description Default')
  end

  def down
  end
end
