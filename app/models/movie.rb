class Movie < ApplicationRecord
  belongs_to :movie_genre
  belongs_to :movie_director
end
