Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'cities#index'
  resources :cities, only: %i[index show] do
    resources :restaurants, only: [:show]
    resources :hotels, only: [:show]
    resources :clubs, only: [:show]
  end

  resources :restaurants, only: [:show]
end
