class MovieDirectorsController < ApplicationController
  def index
    @movie_directors = MovieDirector.all
  end
  
  def show
    @movie_director = MovieDirector.find(params[:id])
    @movies = @movie_director.movies
  end

  def new
    @movie_director = MovieDirector.new
  end

  def create
    @movie_director = MovieDirector.new(movie_director_params)
    
    if @movie_director.save
      return redirect_to @movie_director, notice: 'Diretor cadastrado com sucesso.'
    end
    flash.now[:notice] = 'Não foi possível cadastrar o diretor.'
    render :new, status: 422
  end

  def edit
    @movie_director = MovieDirector.find(params[:id])
  end

  def update
    @movie_director = MovieDirector.find(params[:id])
    if @movie_director.update(movie_director_params)
      return redirect_to @movie_director, notice: 'Diretor atualizado com sucesso.'
    end
    flash.now[:notice] = 'Não foi possível atualizar o diretor.'
    render :edit, status: 422
  end

  private
  
  def movie_director_params
    params.require(:movie_director).permit(:name, :nationality, :birth_date, :movie_genre_id)
  end
end