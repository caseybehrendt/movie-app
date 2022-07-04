class MovieController < ApplicationController
  def all_movies
    movies = Movie.all
    render json: movies.as_json
  end

  def actor
    first_movie = Movie.first
    render json: actor.as_json
  end
end
