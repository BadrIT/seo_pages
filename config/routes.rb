Seo::Engine.routes.draw do
  root to: "seo_pages#index"
  resources :seo_page_defaults

  resources :seo_pages

end
