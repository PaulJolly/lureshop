Rails.application.routes.draw do
  resources :carts
  resources :purchases
  devise_for :accounts, controllers: { sessions: 'accounts/sessions' }
  resources :items

  root "items#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
