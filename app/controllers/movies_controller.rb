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
    @movie = Movie.new(movie_params)
    
    if @movie.save
      return redirect_to movie_path(@movie.id)
    end
    render :new
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
     return redirect_to movie_path(@movie.id)
    end
    render :edit
  end

  private
  
  def movie_params
    params.require(:movie).permit(:title, :release_year, :summary, :country, :duration, :movie_genre_id, :movie_director_id, :status)
  end
end