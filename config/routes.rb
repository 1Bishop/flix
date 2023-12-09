Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get "/movies" => "movies#index"
  get "/movies/:id" => "movies#show", as: :movie
  get "/movies/:id/edit" => "movies#edit", as: :edit_movie
  root "movies#index"

end