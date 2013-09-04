class CreateSeoPageDefaultRecord < ActiveRecord::Migration
  def up
    Seo::SeoPageDefault.create(page_title: Seo::SeoPageDefault::PAGE_TITLE_DEFAULT, 
                               meta_keywords: Seo::SeoPageDefault::PAGE_META_KEYWORDS_DEFAULT,
                               meta_description: Seo::SeoPageDefault::PAGE_META_DESCRIPTION_DEFAULT)
  end

  def down
  end
end
