Rails.application.routes.draw do
  get "/actors" => "actor#actors"

  get "/actor" => "actor#first_actor"
  get "/movies" => "movie#movies"

  post "/actors" => "actors#create"
  post "/movies" => "movies#create"

  get "/actors/:id" => "actors#show"
  get "/movies/:id" => "movies#show"

  patch "/actors/:id" => "actors#update"
  patch "/movies/:id" => "movies#update"

  delete "/actors/:id" => "actors#destroy"
  delete "/movies/:id" => "movies#destroy"
end
