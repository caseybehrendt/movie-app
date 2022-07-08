Rails.application.routes.draw do
  get "/actors" => "actor#actors"

  get "/actors" => "actor#first_actor"
  get "/movies" => "movies#movies"

  post "/actors" => "actor#create"
  post "/movies" => "movies#create"

  get "/actors/:id" => "actor#show"
  get "/movies/:id" => "movies#show"

  patch "/actors/:id" => "actor#update"
  patch "/movies/:id" => "movies#update"

  delete "/actors/:id" => "actor#destroy"
  delete "/movies/:id" => "movies#destroy"
end
