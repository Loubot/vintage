Vintage::Application.routes.draw do
  devise_for :merchants
  devise_for :shops

  resources :merchants do
  	resources :shops
  end
  resources :shops do
  	resources :items
    resources :photos
  end
  resources :items do
  	resources :photos
  end
  

  root :to => 'shops#index'

  
end
