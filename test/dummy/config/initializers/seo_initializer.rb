module Seo
  class ApplicationController < ActionController::Base

    def require_seo_admin
      true
    end
  end
end 