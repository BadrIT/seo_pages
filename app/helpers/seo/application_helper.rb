module Seo
  module ApplicationHelper

    def seo_data
      seo_default = Seo::SeoPageDefault.first
      seo = Seo::SeoPage.where(url_identifier: request.fullpath).first
      data = {}
      [:page_title, :meta_keywords, :meta_description].each do |m|
        data[m] = seo && !seo.send(m).blank? ? seo.send(m) : seo_default.send(m)
      end
      data
    end

  end
end
