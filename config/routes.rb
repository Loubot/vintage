Vintage::Application.routes.draw do
  resources :merchants
  resources :shops
  resources :items
  

  root :to => 'shops#index'
end
