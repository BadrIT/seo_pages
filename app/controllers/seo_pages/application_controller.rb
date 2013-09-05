module SeoPages
  class ApplicationController < ActionController::Base
    before_action :require_seo_admin
  end
end
