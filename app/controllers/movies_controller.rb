class MoviesController < ApplicationController
  def all_movies
    render json: Movie.all
  end

  def one_movie
    movie_id = rand(Movie.all.length + 1)
    if movie_id == 0
      movie_id = 1
    end
    render json: Movie.find(movie_id)
  end

end
