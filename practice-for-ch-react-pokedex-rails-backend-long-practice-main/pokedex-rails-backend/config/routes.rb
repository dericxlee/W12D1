Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # get '/api/pokemon/types'

  namespace :api, defaults: { format: :json } do
    # define routes here to include them in the api namespace
    get '/pokemon/types', to: 'pokemon#types'
    
    resources :pokemon do 
      resources :items, only: [:index, :create]
    end

    # resources :items
    resources :items, only: [:destroy, :update]

  end
end
