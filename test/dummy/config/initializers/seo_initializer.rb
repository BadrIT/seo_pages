module Seo
  class ApplicationController < ActionController::Base

    def require_admin
        true
    end
    
  end
end 