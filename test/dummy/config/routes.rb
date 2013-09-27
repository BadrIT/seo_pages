Rails.application.routes.draw do

  resources :products

  mount SeoPages::Engine => "/seo_pages"
end
