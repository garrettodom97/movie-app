class MoviesController < ApplicationController
  def index
    render json: Movie.all
  end

  def show
    movie_id = params[:id]
    render json: Movie.find(movie_id)
  end

  def create
    movie = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      director: params[:director],
      english: params[:english],
    )
    movie.save
    render json: movie.as_json
  end

  def update
    movie_id = params[:id]
    movie = Movie.find(movie_id)
    movie.title = params[:title] || movie.title
    movie.year = params[:year] || movie.year
    movie.plot = params[:plot] || movie.plot
    movie.director = params[:director] || movie.director
    movie.english = params[:english] || movie.english
    render json: movie.as_json
  end

  def destroy
    movie_id = params[:id]
    movie = Movie.find(movie_id)
    movie.destroy
    render json: { message: "Movie successfully deleted" }
  end
end
