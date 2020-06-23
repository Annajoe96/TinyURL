Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'links#index'

  resources :links, only: [:create, :show]

  get "/:code", to: 'links#show'
end
