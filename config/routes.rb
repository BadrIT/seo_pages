SeoPages::Engine.routes.draw do
  root to: "seo_pages#index"
  
  resources :seo_pages

  resources :seo_page_defaults

end
