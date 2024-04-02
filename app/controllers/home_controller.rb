class HomeController < ApplicationController
  def index
    @movies = Movie.released
  end
end