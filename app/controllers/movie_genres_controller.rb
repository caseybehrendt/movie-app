class MovieGenresController < ApplicationController
  def create
    movie_genre = Movie_genre.new(
      movie_id: params[:movie_id],
      genre_id: params[:genre_id],
    )
    movie.save
  end
end
