module SeoPages
  class Engine < ::Rails::Engine
    isolate_namespace SeoPages
    initializer 'seo_pages.action_controller' do |app|
      ActiveSupport.on_load :action_controller do
        helper SeoPages::Engine.helpers
      end
    end

  end
end
