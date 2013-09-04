module Seo
  class ApplicationController < ActionController::Base
    before_action :require_admin
    
  end
end
