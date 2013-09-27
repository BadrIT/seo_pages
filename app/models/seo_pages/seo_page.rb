module SeoPages
  class SeoPage < ActiveRecord::Base
    validates :url_identifier, uniqueness: true

    scope :regex, -> { where(is_regex: true)}
    scope :non_regex, -> { where(is_regex: false)}

    @@regex = {}

    def self.find_by_url_identifier url
      seo = exact_match url
      unless seo
        seo = regex_match url
      end
    end

    def self.exact_match url
      non_regex.where(url_identifier: url).first
    end

    def self.regex_match url
      regex.to_a.find do |seo|
        (get_regex(seo.url_identifier) =~ url) != nil
      end
    end

    def self.get_regex url
      @@regex[url].nil? ? @@regex[url] = Regexp.new(url) : @@regex[url]
    end
  end
end
