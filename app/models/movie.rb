class Movie < ApplicationRecord
  enum status: { draft: 0, published: 2 }
  belongs_to :movie_genre
  belongs_to :movie_director
end
