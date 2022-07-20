class Movie < ApplicationRecord
  has_many :movie_genre
  has_many :genres, through :movie_genre
end
