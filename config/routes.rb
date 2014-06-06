Vintage::Application.routes.draw do
  resources :merchants
  resources :shops
  resources :items do
  	resources :photos
  end
  

  root :to => 'shops#index'
end
