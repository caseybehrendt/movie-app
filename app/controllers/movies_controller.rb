class MovieController < ApplicationController
  def movie
    first_movie = Movie.first
    render json: movie.as_json
  end

  def movies
    movie = Movie.all
    render json: movie.as_json
  end

  def movie
    title = Movie.first
    render json: title.as_json
  end

  def show
    movie = Movie.find_by(id: params[:id])
    render json: movie.as_json
  end

  def create
    movie = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
    )
    movie.save
  end

  def update
    movie_id = params[:id]
    movie = Movie.find_by(id: movie_id)

    movie.title = params[:title] || movie.title
    movie.year = params[:year] || movie.year
    movie.plot = params[:plot] || movie.plot

    movie.save
    render json: movie.as_json
  end

  def destroy
    movie_id = params[:id]
    movie = Movie.find_by(id: movie_id)
    movie.destroy
    render json: { message: "Movie record has been successfully deleted" }
  end
end
