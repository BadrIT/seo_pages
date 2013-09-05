module Seo
  class Engine < ::Rails::Engine
    isolate_namespace Seo
    initializer 'seo.action_controller' do |app|
      ActiveSupport.on_load :action_controller do
        helper Seo::Engine.helpers
      end
    end
  end
end
