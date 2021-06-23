class ActorsController < ApplicationController
  def index
    render json: Actor.all
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
    )
    actor.save
    render json: actor.as_json
  end

  def update
    actor_id = params[:id]
    actor = Actor.find(actor_id)
    actor.first_name = params[:first_name] || actor.first_name
    actor.last_name = params[:last_name] || actor.last_name
    actor.known_for = params[:known_for] || actor.known_for
    render json: actor.as_json
  end

  def destroy
    actor_id = params[:id]
    actor = Actor.find(actor_id)
    actor.destroy
    render json: { message: "Actor successfully deleted" }
  end
end
