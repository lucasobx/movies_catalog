class Movie < ApplicationRecord
  belongs_to :movie_genre
  belongs_to :movie_director

  enum status: { unreleased: 0, released: 1}
  enum visibility: { draft: 0, published: 1}
end
