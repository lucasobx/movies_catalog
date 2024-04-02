class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :release_year
      t.string :summary
      t.string :country
      t.integer :duration
      t.references :movie_genre, null: false, foreign_key: true
      t.references :movie_director, null: false, foreign_key: true

      t.timestamps
    end
  end
end
