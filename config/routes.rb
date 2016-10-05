Rails.application.routes.draw do
  resources :resources, only: [:index, :show]
  get 'token/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
