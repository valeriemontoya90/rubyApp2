class UserMoviesController < ApplicationController
  before_action :set_user_movie, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @user_movies = UserMovie.all
    respond_with(@user_movies)
  end

  def show
    respond_with(@user_movie)
  end

  def new
    @user_movie = UserMovie.new
    respond_with(@user_movie)
  end

  def edit
  end

  def create
    @user_movie = UserMovie.new(user_movie_params)
    @user_movie.save
    respond_with(@user_movie)
  end

  def update
    @user_movie.update(user_movie_params)
    respond_with(@user_movie)
  end

  def destroy
    @user_movie.destroy
    respond_with(@user_movie)
  end

  private
    def set_user_movie
      @user_movie = UserMovie.find(params[:id])
    end

    def user_movie_params
      params.require(:user_movie).permit(:user_id, :movie_id)
    end
end
