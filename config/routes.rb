Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  scope module: :api do
    scope module: :v1, constraints: ApiVersionConstraint.new(version: 1) do 
      resources :users
    end 
  end
end
