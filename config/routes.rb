Rails.application.routes.draw do
  get "/movies" => "movies#index"
  get "/movies/:id" => "movies#show"
  post "/movies" => "movies#create"
  delete "movies/:id" => "movies#destroy"
  patch "movies/:id" => "movies#update"

  get "/actors" => "actors#index"
  get "/actors/:id" => "actors#show"
  post "/actors" => "actors#create"
  delete "actors/:id" => "actors#destroy"
  patch "actors/:id" => "actors#update"
end
