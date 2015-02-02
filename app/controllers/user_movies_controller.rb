class UserMoviesController < ApplicationController
	# POST /user_movies/create
  # POST /user_movies/create/1.json
  def create
    #@user_movie = UserMovie.create(params[:user_id, :movie_id])
    @user_movie = UserMovie.new(user_movie_params)

    respond_to do |format|
      if @user_movie.save
        format.html { redirect_to @user_movie, notice: 'Movie was successfully created.' }
        format.json { render :show, status: :created, location: @user_movie }
      else
        format.html { render :new }
        format.json { render json: @user_movie.errors, status: :unprocessable_entity }
      end
    end
  end
end
