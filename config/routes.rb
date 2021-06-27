Rails.application.routes.draw do
  
  devise_for :sellers
  resources :books
  root "books#index"
end
