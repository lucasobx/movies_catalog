class CreateMovieDirectors < ActiveRecord::Migration[7.1]
  def change
    create_table :movie_directors do |t|
      t.string :name
      t.string :nationality
      t.string :birth_date
      t.references :movie_genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
