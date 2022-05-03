Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  #root "articles#index"
  scope module: :api do
    scope module: :v1, constraints: ApiVersionConstraint.new(version: 1) do 
      resources :users
      resources :schools do
        resources :students
        resources :profesors
        resources :vendors
        resources :payments

        #get "/payments", to: "payments#index"

        #dashboard
        get "/active_students_number", to: "students#active_students_number"
        #/schools/:school_id/student/active_students
      end
    end 
  end
end
