Rails.application.routes.draw do

  # get 'welcome/index', as: :main


  devise_scope :user do
    authenticated :user do
      root 'welcome#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  devise_for :users

  root "welcome#index"

  resources :clients
  resources :pizzas
  resources :employees
  resources :orders

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
