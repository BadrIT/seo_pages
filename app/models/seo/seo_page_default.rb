module Seo
  class SeoPageDefault < ActiveRecord::Base
    validate :page_title, :meta_keywords, :meta_description, presence: true

    PAGE_TITLE_DEFAULT = 'Edit Page Title Default'
    PAGE_META_KEYWORDS_DEFAULT = 'Edit Page Meta Keywords Default'
    PAGE_META_DESCRIPTION_DEFAULT = 'Edit Page Meta Description Default'
  
  end
end
