Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :car_sales
  resources :cars
  resources :providers
  resources :sellers
end
