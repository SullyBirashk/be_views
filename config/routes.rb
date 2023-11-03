Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # allow do
  #   origins 'http://localhost:3001'
  # end

  namespace :api do
    namespace :v1 do
      resources :locations do
        collection do
          get 'nearby' # This maps to the "nearby" action on locations controller
        end
      end
    end
  end


end
