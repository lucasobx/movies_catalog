class MovieGenre < ApplicationRecord
  has_many :movie_directors
  has_many :movies
end
