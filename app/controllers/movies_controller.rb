class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(
      title: params[:movie][:title],
      release_year: params[:movie][:release_year],
      synopse: params[:movie][:synopse],
      country: params[:movie][:country],
      duration: params[:movie][:duration],
      movie_director_id: params[:movie][:movie_director_id],
      movie_genre_id: params[:movie][:movie_genre_id])

    if @movie.save
      return redirect_to movie_path(@movie.id)
    end
  end

  def edit
    @movie = Movie.find(params[:id])
  end
  
  def update
    @movie = Movie.find(params[:id])

    if @movie.update(
      title: params[:movie][:title],
      release_year: params[:movie][:release_year],
      synopse: params[:movie][:synopse],
      country: params[:movie][:country],
      duration: params[:movie][:duration],
      movie_director_id: params[:movie][:movie_director_id],
      movie_genre_id: params[:movie][:movie_genre_id])

      return redirect_to movie_path(@movie.id)
    end
    render :edit
  end
end
