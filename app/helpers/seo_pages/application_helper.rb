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

    def seo_title_tag(content)
      "<title>#{content}</title>"
    end


    def seo_meta_tag(type, content)
      "<meta name='#{type}' content='#{content}'>"
    end

    def seo_page
      s_title = seo_title_tag(content_for?(:title) ? content_for(:title) : seo_data.page_title)
      s_desc  = seo_meta_tag('description', content_for?(:meta_description) ? content_for(:meta_description) : "#{seo_data.meta_description}")
      s_keywords  = seo_meta_tag('keywords', content_for?(:meta_keywords) ? content_for(:meta_keywords) : "#{seo_data.meta_keywords}")
      raw("#{s_title} \n #{s_desc} \n #{s_keywords}")
    end

    def seo_page_title(content)
      content_for(:title) { content }
    end
    
    def seo_page_meta_description(content)
      content_for(:meta_description) { content }
    end

    def seo_page_meta_keywrods(content)
      content_for(:meta_keywords) { content }
    end
  end
end
