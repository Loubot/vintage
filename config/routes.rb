Vintage::Application.routes.draw do
  resources :merchants
  resources :shops
  resources :items
  resources :photos
  

  root :to => 'shops#index'
end
