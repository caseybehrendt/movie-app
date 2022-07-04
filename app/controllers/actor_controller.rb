class ActorController < ApplicationController

  def all_actors
    actors = Actor.all
    render json: actors.as_json
  end

  def "actor"
    first_actor = Actor.first
    render json: actor.as_json
  end
  
end
