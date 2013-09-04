module Seo
  class SeoPage < ActiveRecord::Base
    validates :url_identifier, uniqueness: true
  end
end
