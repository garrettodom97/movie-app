class ActorsController < ApplicationController
  def actor_by_id
    render json: Actor.find_by(id: 5)
  end
end
