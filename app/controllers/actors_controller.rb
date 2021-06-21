class ActorsController < ApplicationController
  def actor_by_id
    render json: Actor.find_by(id: 5)
  end

  def show
    actor_id = params[:id]
    render json: Actor.find(actor_id)
  end
end
