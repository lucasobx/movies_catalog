class MovieGenresController < ApplicationController
  def index
    @movie_genres = MovieGenre.all
  end

  def show
    @movie_genre = MovieGenre.find(params[:id])
  end

  def new
    @movie_genre = MovieGenre.new
  end

  def create
    @movie_genre = MovieGenre.new(name: params[:movie_genre][:name])

    if @movie_genre.save
      return redirect_to movie_genre_path(@movie_genre.id)
    end
  end

  def edit
    @movie_genre = MovieGenre.find(params[:id])
  end
  
  def update
    @movie_genre = MovieGenre.find(params[:id])

    if @movie_genre.update(
        name: params[:movie_genre][:name])
      return redirect_to movie_genre_path(@movie_genre.id)
    end
    render :edit
  end
end