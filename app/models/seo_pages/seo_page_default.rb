module SeoPages
  class SeoPageDefault < ActiveRecord::Base
    validate :page_title, :meta_keywords, :meta_description, presence: true 
  end
end
