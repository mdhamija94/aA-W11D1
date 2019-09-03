Rails.application.routes.draw do
  # Your routes here!

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api, defaults: { format: :json } do
    resources :guests do 
      resources :gifts, only: [:index]
    end

    resources :gifts, only: [:show]

    resources :parties, only: [:show, :index] do
      resources :invitations, only: [:index] do
        resources :guests, only: [:index]
      end
    end
  end


end