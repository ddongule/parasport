Rails.application.routes.draw do
  resources :apimaps
  get 'home/index'
  root 'home#index'
  get 'home/map'
  get 'home/test'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
