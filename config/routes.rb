Rails.application.routes.draw do
  resources :teams, only: [:show]
  resources :matches, only: [:index]

  namespace :stats do
    resources :matches, only: [:show] do
      resources :teams, only: [:show] do
        resources :players, only: [:show]
      end
    end
  end

end
