class ActorController < ApplicationController

  def actors
    actors = Actor.all
    render json: actors.as_json
  end

  def actor
    first_actor = Actor.first
    render json: actor.as_json
  end

  def show
    actor = Actor.find_by(id: params["id"])
  
end
