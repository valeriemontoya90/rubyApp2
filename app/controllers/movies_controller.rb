class MoviesController < ApplicationController
  def index
  end

  def search
    @movie = Movie.search(params[:q])
    @configuration = Tmdb::Configuration.new
  end

  def show
  end

end
