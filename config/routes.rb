Rails.application.routes.draw do
  get "/actor_by_id" => "actors#actor_by_id"

  get "/all_movies" => "movies#all_movies"
  get "/one_movie" => "movies#one_movie"
end
