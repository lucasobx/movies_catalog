class CreateMovieDirectors < ActiveRecord::Migration[7.1]
  def change
    create_table :movie_directors do |t|
      t.string :name
      t.string :nationality
      t.date :birth_date
      t.integer :movie_genre_id
      t.timestamps
    end
  end
end
