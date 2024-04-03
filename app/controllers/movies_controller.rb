class MoviesController < ApplicationController
  def index
    @movies = Movie.published
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
      return redirect_to @movie, notice: 'Filme cadastrado com sucesso.'
    end
    flash.now[:notice] = 'Não foi possível cadastrar o filme.'
    render :new, status: 422
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
     return redirect_to @movie, notice: 'Filme atualizado com sucesso.'
    end
    flash.now[:notice] = 'Não foi possível atualizar o filme.'
    render :edit, status: 422
  end

  def publish
    movie = Movie.find(params[:id])
    movie.published!
    return redirect_to movie_path(movie.id)
  end

  def draft
    movie = Movie.find(params[:id])
    movie.draft!
    return redirect_to movie_path(movie.id)
  end

  private
  
  def movie_params
    params.require(:movie).permit(:title, :release_year, :summary, :country, :duration, :movie_genre_id, :movie_director_id, :status, :poster)
  end
end