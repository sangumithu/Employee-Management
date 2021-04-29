Rails.application.routes.draw do
  resources :empdetails
  get 'search',to: "empdetails#search"
  get 'home/index'
  get 'home/about'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
