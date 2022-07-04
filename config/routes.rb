Rails.application.routes.draw do
  get "/all_actors", controller: "actor", action: "all_actors"

  get "/actor", controller: "actor", action: "first_actor"
end
