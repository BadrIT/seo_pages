module SeoPages
  class ApplicationController < ActionController::Base

    def require_seo_admin
        # redirect_to(root_path) unless current_user.admin?
    end

  end
end  