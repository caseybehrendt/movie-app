class MovieGenre < ApplicationRecord
  belongs_to :movie
  belongs to :genres
end
