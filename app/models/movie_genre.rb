class MovieGenre < ApplicationRecord
  belongs_to :movie
  has_many :actors
end
