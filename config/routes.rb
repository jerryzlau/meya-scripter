Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static_pages#root"

  namespace :api, defaults: {format: :json} do

    resources :flows, only: [:index, :create, :edit, :destroy]
    resources :states, only: [:create, :edit, :destroy]
    resources :buttons, only: [:create, :edit, :destroy]
    resources :properties, only: [:create, :edit, :destroy]
    resources :transitions, only: [:create, :edit, :destroy]
 
  end
end
