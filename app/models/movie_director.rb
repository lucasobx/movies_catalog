class MovieDirector < ApplicationRecord
  belongs_to :movie_genre
  has_many :movies
end
