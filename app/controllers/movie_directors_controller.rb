class MovieDirectorsController < ApplicationController
  def index
    @movie_directors = MovieDirector.all
  end

  def show
    @movie_director = MovieDirector.find(params[:id])
  end

  def new
    @movie_director = MovieDirector.new
  end

  def create
    @movie_director = MovieDirector.new(name: params[:movie_director][:name],
                                        nationality: params[:movie_director][:nationality],
                                        birth_date: params[:movie_director][:birth_date],
                                        movie_genre_id: params[:movie_director][:movie_genre_id])

    if @movie_director.save
      return redirect_to movie_director_path(@movie_director.id)
    end
  end

  def edit
    @movie_director = MovieDirector.find(params[:id])
  end
  
  def update
    @movie_director = MovieDirector.find(params[:id])

    if @movie_director.update(name: params[:movie_director][:name],
                           nationality: params[:movie_director][:nationality],
                           birth_date: params[:movie_director][:birth_date],
                           movie_genre_id: params[:movie_director][:movie_genre_id])
      return redirect_to movie_director_path(@movie_director.id)
    end
    render :edit
  end
end
