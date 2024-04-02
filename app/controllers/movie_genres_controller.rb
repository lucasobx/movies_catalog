class MovieGenresController < ApplicationController
  def index
    @movie_genres = MovieGenre.all
  end

  def show
    @movie_genre = MovieGenre.find(params[:id])
    @movies = @movie_genre.movies
  end

  def new
    @movie_genre = MovieGenre.new
  end

  def create
    @movie_genre = MovieGenre.new(movie_genre_params)
    
    if @movie_genre.save
      return redirect_to @movie_genre, notice: 'Gênero cadastrado com sucesso.'
    end
    flash.now[:notice] = 'Não foi possível cadastrar o gênero.'
    render :new, status: 422
  end

  def edit
    @movie_genre = MovieGenre.find(params[:id])
  end

  def update
    @movie_genre = MovieGenre.find(params[:id])
    if @movie_genre.update(movie_genre_params)
      return redirect_to @movie_genre, notice: 'Gênero atualizado com sucesso.'
    end
    flash.now[:notice] = 'Não foi possível atualizar o gênero.'
    render :edit, status: 422
  end

  private
  
  def movie_genre_params
    params.require(:movie_genre).permit(:name)
  end
end