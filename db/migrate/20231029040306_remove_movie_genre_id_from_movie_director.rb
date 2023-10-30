class RemoveMovieGenreIdFromMovieDirector < ActiveRecord::Migration[7.1]
  def change
    remove_column :movie_directors, :movie_genre_id, :string
  end
end
