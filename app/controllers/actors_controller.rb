class ActorsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    actors = Actor.order(age: :desc)
    render json: actors
  end

  def show
    actor_id = params[:id]
    render json: Actor.find(actor_id)
  end

  def create
    actor = Actor.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for],
      gender: params[:gender],
      age: params[:age],
      movie_id: params[:movie_id],
    )
    actor.save
    if actor.save
      render json: actor
    else
      render json: { errors: actor.errors.full_messages }
    end
  end

  def update
    actor_id = params[:id]
    actor = Actor.find(actor_id)
    actor.first_name = params[:first_name] || actor.first_name
    actor.last_name = params[:last_name] || actor.last_name
    actor.known_for = params[:known_for] || actor.known_for
    actor.gender = params[:gender] || actor.gender
    actor.age = params[:age] || actor.age
    actor.movie_id = params[:movie_id] || actor.movie_id
    if actor.save
      render json: actor
    else
      render json: { errors: actor.errors.full_messages }
    end
  end

  def destroy
    actor_id = params[:id]
    actor = Actor.find(actor_id)
    actor.destroy
    render json: { message: "Actor successfully deleted" }
  end
end
