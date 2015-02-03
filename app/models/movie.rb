class Movie < ActiveRecord::Base
	has_many :user_movie

	def index
		@movie = Tmdb::Movie.find(params[:query])
	end

	def self.search(query)
		@movie = Tmdb::Search.new
		@movie.resource('movie') # determines type of resource
		@movie.query(query) # the query to search against
		@movie.fetch # makes request
	end
end