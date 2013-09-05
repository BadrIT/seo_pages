module SeoPages
  module ApplicationHelper
    def seo_data
      @seo_default ||= SeoPages::SeoPageDefault.first
      @seo = SeoPages::SeoPage.where(url_identifier: request.fullpath).first || SeoPages::SeoPage.new
      
      @seo.page_title ||= @seo_default.page_title
      @seo.meta_keywords ||= @seo_default.meta_keywords
      @seo.meta_description ||= @seo_default.meta_description
      
      @seo
    end
  end
end
